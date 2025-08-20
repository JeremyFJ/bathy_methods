require(rinat)
require(rgbif)
require(dplyr)
require(sharkPulseR)

# setwd("scripts/")
source("./get_inat_obs2.R")

# Bounding box for the entire world
world_bounds <- list(swlat = -90, swlng = -180, nelat = 90, nelng = 180)

# TryCatch block to source and combine data
tryCatch({
  isopod_data <- get_inat_obs2(
    taxon_name = "Bathynomus kapala",  # Scientific name of the isopod
    geo = TRUE,                           # Ensure only georeferenced observations are returned
    bounds = world_bounds,                  # Updated to the entire world
    maxresults = 10000                    # Adjust maxresults as needed
  )

  # GBIF data (keep the same bounds for now or adjust if needed)
  dat_gbif = occ_data(geometry = c(-180, -90, 180, 90), scientificName = "Bathynomus propinquus",
                      limit = 10000)
  dat_gbif_data <- dat_gbif$data

  # Normalize columns in GBIF data (GBIF)
  gbif_data_clean <- dat_gbif_data %>%
    select(decimalLatitude, decimalLongitude, eventDate, scientificName, 
           bibliographicCitation, references, depth, basisOfRecord) %>%
    rename(
      latitude = decimalLatitude,
      longitude = decimalLongitude,
      date = eventDate,
      reference = bibliographicCitation,
      notes = basisOfRecord,
      url = references,
      scientific_name = scientificName  # Align with iNaturalist column names
    ) %>%
    mutate(date = as.Date(date, format = "%Y-%m-%d"),
           image_url = "",
           source = "GBIF",
           n = 1)

  # Nortmalized GBIF (2)
  # gbif_data_clean <- dat_gbif_data %>%
  #   select(decimalLatitude, decimalLongitude, eventDate, scientificName, 
  #          identifiedBy, depth, basisOfRecord, waterBody, individualCount) %>%
  #   rename(
  #     latitude = decimalLatitude,
  #     longitude = decimalLongitude,
  #     date = eventDate,
  #     reference = identifiedBy,
  #     notes = basisOfRecord,
  #     location = waterBody,
  #     n = individualCount,
  #     scientific_name = scientificName  # Align with iNaturalist column names
  #   ) %>%
  #   mutate(date = as.Date(date, format = "%Y-%m-%d"),
  #          source = "GBIF") 
  
  
  # Step 2: Clean and standardize isopod_data (iNaturalist)
  isopod_data_clean <- isopod_data %>%
    filter(!is.na(latitude) & !is.na(longitude)) %>%
    select(latitude, longitude, datetime, scientific_name, url, 
           image_url, tag_list, description, user_name) %>%
    rename(date = datetime,
           reference = user_name) %>%
    mutate(date = as.Date(date, format = "%Y-%m-%d"),
           source = "iNaturalist",
           notes = paste(tag_list, description, sep = " "),
           depth = NA,
           n = 1
           ) %>%
    select(-c(tag_list, description))

  # Combine iNaturalist and GBIF data
  combined_isopod_data <- rbind(isopod_data_clean, gbif_data_clean) 

  combined_data <- combined_isopod_data

  combined_data <- removeInlands(combined_data, buffer = -10)
  combined_data = subset(combined_data, inland == FALSE) %>%
    select(-c(inland, buffer))

}, error = function(e) {
  message("Error combining dataframes: ", e)
})

write.csv(combined_data, "../../data/observations/isopod_inat_gbif_observations.csv", row.names = FALSE)

# write.csv(gbif_data_clean, "../../data/observations/isopod_inat_gbif_observations.csv", row.names = FALSE)

# BOLD Systems 

library("bold")
dat = bold_specimens(taxon='Bathynomus')

# OBIS

library(robis)
dat = occurrence("Bathynomus")
