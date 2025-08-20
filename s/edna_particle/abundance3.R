# Load necessary libraries
library(RNetCDF)
library(ggplot2)
library(dplyr)
library(sf)
library(ggspatial)
library(rnaturalearth)
library(viridis)

# Set working directory
setwd("~/Dropbox/btw/scripts/particles/")

# Function to extract and reshape particle coordinates from .nc file
extract_and_reshape_particle_coords <- function(nc_file) {
  tryCatch({
    # Open the NetCDF file
    nc_data <- open.nc(nc_file)
    
    # Extract variables
    lon <- var.get.nc(nc_data, "lon")
    lat <- var.get.nc(nc_data, "lat")
    time <- var.get.nc(nc_data, "time")
    degraded <- var.get.nc(nc_data, "degraded")  # Particle degradation status
    
    # Convert extracted data into a structured dataframe
    df <- data.frame(
      lon = as.vector(t(lon)),
      lat = as.vector(t(lat)),
      time = as.vector(t(time)),
      degraded = as.vector(t(degraded))
    )
    
    # Close the NetCDF file
    close.nc(nc_data)
    
    # Keep only the latest timestep for degraded particles
    df_filtered <- df %>% 
      filter(degraded == 0) %>%
      filter(time == max(time))
    
    return(df_filtered)
    
  }, error = function(e) {
    message(paste("Skipping file due to error:", e$message))
    return(NULL)
  })
}

# Function to process all .nc files in a directory
process_nc_files <- function(nc_files) {
  all_data <- data.frame()
  
  for (file in nc_files) {
    coords <- extract_and_reshape_particle_coords(file)
    
    if (!is.null(coords) && nrow(coords) > 0) {
      all_data <- rbind(all_data, coords)
    }
  }
  
  # Remove NAs
  all_data <- na.omit(all_data)
  
  if (nrow(all_data) == 0) {
    return(NULL)
  }
  
  # Bin into 0.25° x 0.25° resolution
  binned_data <- all_data %>%
    mutate(
      lon_bin = floor(lon * 4) / 4,  # Rounds to nearest 0.25°
      lat_bin = floor(lat * 4) / 4
    ) %>%
    group_by(lon_bin, lat_bin) %>%
    summarise(intensity = n()) %>%
    ungroup()
  
  return(binned_data)
}

# Function to process data and generate a heatmap
generate_particle_intensity_map <- function(month, month_path) {
  print(paste("Processing", month))
  
  nc_files <- list.files(month_path, pattern = "\\.nc$", full.names = TRUE)
  binned_data <- process_nc_files(nc_files)
  
  if (is.null(binned_data) || nrow(binned_data) == 0) {
    print(paste("No data available for", month))
    return(NULL)
  }
  
  # Convert to spatial data
  grid_sf <- st_as_sf(binned_data, coords = c("lon_bin", "lat_bin"), crs = 4326)
  
  # Load a world map for context
  world <- rnaturalearth::ne_countries(scale = "medium", returnclass = "sf")
  
  # Plot the intensity heatmap
  p <- ggplot() +
    geom_sf(data = world, fill = "gray90", color = "black") +
    geom_tile(data = binned_data, aes(x = lon_bin, y = lat_bin, fill = intensity), alpha = 0.8) +
    scale_fill_viridis_c(name = "Particle Intensity") +
    theme_minimal() +
    labs(title = paste("Remaining Particle Intensity -", month),
         x = "Longitude", y = "Latitude") +
    coord_sf()
  
  # Save the plot
  output_file <- paste0("particle_intensity_", month, ".png")
  ggsave(output_file, plot = p, width = 10, height = 6, dpi = 300)
  print(paste("Saved plot:", output_file))
  
  print(p)
}

# Define data directory
data_dir <- "~/Dropbox/btw/data/corse/"
months <- c("2024_04", "2024_05", "2024_06", "2024_07")  # Modify based on available months

# Loop through months and generate plots
for (month in months) {
  generate_particle_intensity_map(month, file.path(data_dir, month))
}
