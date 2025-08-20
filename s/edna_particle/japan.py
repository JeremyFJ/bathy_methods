"""
Drift of eDNA particles in the ocean for each day of January 2024 with progress tracking
========================================================================================
"""
from datetime import datetime, timedelta
import calendar
from pelagicegg import eDNADrift
from opendrift.readers import reader_netCDF_CF_generic
from opendrift.readers import reader_shape
import numpy as np
import os
from shapely.geometry import Point, shape
import fiona

# Paths to environmental data
enviro_path = "../data/copernicus/"

# Path to shapefile for coastlines
coastline_shapefile = '../data/shp/japan_Japan_Country_Boundary_MAPOG/japan_Japan_Country_Boundary.shp'

# Function to check if a point is in the sea
def is_point_in_sea(lon, lat, coastline_shapes):
    point = Point(lon, lat)
    for coastline_shape in coastline_shapes:
        if coastline_shape.contains(point):
            return False
    return True

# Load the coastline shapes
with fiona.open(coastline_shapefile, 'r') as shp:
    coastline_shapes = [shape(feature['geometry']) for feature in shp]

# Define the grid resolution and coordinate limits
min_lon = 128.0
max_lon = 150.0
min_lat = 27.0
max_lat = 46.0
resolution = 0.25

# Create a grid of points
lon_points = np.arange(min_lon, max_lon, resolution)
lat_points = np.arange(min_lat, max_lat, resolution)

# Ensure the output directory exists
output_path = "../data/japan/"
if not os.path.exists(output_path):
    os.makedirs(output_path)

# Pre-filter points based on land/ocean
filtered_points = []
for lon in lon_points:
    for lat in lat_points:
        if is_point_in_sea(lon, lat, coastline_shapes):
            filtered_points.append((lon, lat))

total_seeding_locations = len(filtered_points)  # Total number of seeding locations

# Set the yearly period (2024)
year = 2024

# Define the total seeding locations for progress tracking
total_seeding_locations = len(filtered_points)

# Loop through each month of the year
for month in range(3, 8):  # Months from 1 (January) to 8 (August)
    # Get the number of days in the current month
    num_days = calendar.monthrange(year, month)[1]
    
    # Set the start and end dates for the current month
    start_date = datetime(year, month, 1)
    end_date = datetime(year, month, num_days)

    # Create a folder for the current month in the output path
    month_str = f"{year}_{str(month).zfill(2)}"  # e.g., "2024_01" for January 2024
    month_output_path = os.path.join(output_path, month_str)

    # Ensure the month folder exists
    if not os.path.exists(month_output_path):
        os.makedirs(month_output_path)

    # Loop through each day of the current month
    current_time = start_date
    while current_time <= end_date:
        # Paths to environmental data files for the current day
        date_str = current_time.strftime("%Y-%m-%d")
        
        # Update file paths for environmental data, using the correct date for each file
        reader_wp1 = reader_netCDF_CF_generic.Reader(os.path.join(enviro_path, f"JAPAN_sst_2024-08-31.nc"))
        reader_wp2 = reader_netCDF_CF_generic.Reader(os.path.join(enviro_path, f"JAPAN_cur_2024-08-31.nc"))
        
        print(f"Running model for date: {date_str}")
        
        # Initialize progress counters
        completed_seeding_locations = 0
        
        # Run the model for each filtered point
        for lon, lat in filtered_points:
            # Create output filename to check if the file already exists
            output_file = os.path.join(month_output_path, f"japan_{lon}_{lat}_{current_time.strftime('%m%d%y')}.nc")
            
            # Check if the file already exists, and skip if it does
            if os.path.exists(output_file):
                print(f"File already exists for {lon}, {lat} on {date_str}. Skipping...")
                continue
            
            try:
                # Re-initialize the model for each run
                o = eDNADrift(loglevel=10)  # 0 for debug output
                
                # Add readers to the model
                o.add_reader(reader_wp1)
                o.add_reader(reader_wp2)
                o.add_reader(reader_shape.Reader.from_shpfiles(coastline_shapefile))
                
                # Enable auto landmask
                o.set_config('general:use_auto_landmask', False)

                # Adjust configuration settings
                o.set_config('drift:vertical_mixing', True)
                o.set_config('vertical_mixing:diffusivitymodel', 'environment')  # Use eddy diffusivity from ocean model
                o.set_config('vertical_mixing:timestep', 60.)  # Seconds
                o.set_config('drift:current_uncertainty', 0.15)
                o.set_config('drift:wind_uncertainty', 0.2)
                o.set_config('processes:degradation', True)
                
                # Seed particles
                o.seed_elements(lon=lon, lat=lat, z=0, radius=10, number=500,
                                time=current_time, terminal_velocity=0)
                
                # Run the model and save the result
                o.run(duration=timedelta(hours=36), time_step=900, time_step_output=3600, 
                      outfile=output_file)
                
                # Update progress
                completed_seeding_locations += 1
                print(f"[{completed_seeding_locations}/{total_seeding_locations}] Seeding locations finished for {date_str}")
                
            except ValueError as e:
                print(f"Skipping point ({lon}, {lat}) due to error: {e}")
                continue

        # Increment the time by 3 days
        current_time += timedelta(days=3)

    print(f"Completed simulations for month {month}, {year}\n")
