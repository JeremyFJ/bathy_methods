# reticulate::use_python("/home/jeremy/miniforge3/bin/python")
# reticulate::use_python("/home/jeremyfj/miniforge3/envs/opendrift/bin/python") # -- Desktop PC
reticulate::use_python("/Users/jjeremy1/miniforge3/envs/opendrift/bin/python") # Mac
library(lubridate)
library(ncdf4)
# library(raster)

# Load the reticulate package

start_datetime <- as.Date("2024-01-01")
end_datetime <- as.Date("2024-08-31")

# Function to automate data retrieval
automate_copernicus_retrieval <- function(start_datetime, end_datetime) {

  # Convert dates to the required format
  end_datetime_str <- format(end_datetime, "%Y-%m-%dT00:00:00")
  start_datetime_str <- format(start_datetime, "%Y-%m-%dT00:00:00")

  # Coordinates for JAPAN
    minimum_longitude <- 128.0
    maximum_longitude <- 146.0
    minimum_latitude <- 24.0
    maximum_latitude <- 46.0

  # Output filename based on the end date
  output_filename <- paste0("../data/copernicus/", "JAPAN_ssh_", format(end_datetime, "%Y-%m-%d"), ".nc")

  # Use reticulate to run the Python script with the calculated parameters
  reticulate::py_run_string(paste0("
import copernicusmarine as cm
import subprocess

# Define the Python script as a string
python_script = '''
import copernicusmarine as cm

cm.subset(
    dataset_id=\"cmems_mod_glo_phy_anfc_0.083deg_P1D-m\",
    variables=[\"zos\"],
    minimum_longitude=", minimum_longitude, ",
    maximum_longitude=", maximum_longitude, ",
    minimum_latitude=", minimum_latitude, ",
    maximum_latitude=", maximum_latitude, ",
    start_datetime=\"", start_datetime_str, "\",
    end_datetime=\"", end_datetime_str, "\",
    output_filename=\"", output_filename, "\",
    minimum_depth=", 0.49402499198913574, ",
    maximum_depth=", 11.404999732971191, ",
    username=\"\",
    password=\"\"
)
'''

# Run the Python script and simulate 'Y' input for confirmation
process = subprocess.Popen(['python', '-c', python_script], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
stdout_data, stderr_data = process.communicate(input=b'Y\\n')

print(stdout_data.decode())
print(stderr_data.decode())
"))

return(output_filename)
}

# Run the function to retrieve the data
nc_file = automate_copernicus_retrieval(start_datetime, end_datetime)