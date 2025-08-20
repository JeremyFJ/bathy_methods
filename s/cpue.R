# compute_bt_cpue.R

# 1) Load required packages
library(DBI)
library(RPostgreSQL)
library(dplyr)
library(lubridate)
library(tidyr)
library(ggplot2)
# if your "Set Info" file is still an .xlsx, uncomment the next line:
# library(readxl)

# 2) Connect to the btw database
con <- dbConnect(
  drv      = RPostgreSQL::PostgreSQL(),
  dbname   = "btw",
  host     = "localhost",
  port     = 5432,
  user     = "jeremy",
  password = "VTsandtiger1!"
)

# 3) Pull catch counts per set for Bathynomus giganteus
catch_counts <- dbGetQuery(con, "
  SELECT
    set,
    COUNT(*) AS n_caught
  FROM btw_iso_expedition
  WHERE species = 'Bathynomus giganteus'
  GROUP BY set
")
catch_counts[7,] = c("BTW_DW1", 0)
catch_counts[8,] = c("BTW_DW8", 0)
catch_counts$n_caught = as.numeric(catch_counts$n_caught)
# 4) Read in your trap‐deployment metadata
#    – if it's a CSV:
effort_df <- read.csv(
  "../data/BHS Deep Sea Longlines_Traps.xlsx - Set Info.csv",
  stringsAsFactors = FALSE
)

#    – if it's really an Excel file, do instead:
# effort_df <- read_excel(
#   "../data/BHS Deep Sea Longlines_Traps.xlsx",
#   sheet = "Set Info"
# )

# 5) Parse dates/times and compute trap‐hours
effort_df <- effort_df %>%
  # convert the 'date' column from m/d/yy
  mutate(date = mdy(date)) %>%
  # combine with start/end times
  mutate(
    start_dt = as.POSIXct(paste(date, deploy_start),
                          format = "%Y-%m-%d %H:%M", tz = "UTC"),
    end_dt   = as.POSIXct(paste(date, deploy_end),
                          format = "%Y-%m-%d %H:%M", tz = "UTC"),
    duration_hrs = as.numeric(difftime(end_dt, start_dt,
                                       units = "hours")),
    # effort = number of traps × hours deployed
    trap_hours = traps * duration_hrs
  )

# 6) Join catches to effort and compute CPUE
cpue_df <- catch_counts %>%
  left_join(effort_df %>% dplyr::select(set, traps, trap_hours),
            by = "set") %>%
  mutate(
    cpue_per_trap_hour = n_caught / trap_hours,
    cpue_per_trap      = n_caught / traps
  )

# 7) View your results
print(cpue_df)

# 8) Clean up
dbDisconnect(con)


# nasau = cpue_df[c(2,4,5),]
# exuma = cpue_df[c(1,3,6),]


# 1) tag each set by region
cpue2 <- cpue_df %>%
  mutate(region = case_when(
    set %in% c("BTW_DW1", "BTW_DW2","BTW_DW3","BTW_DW4") ~ "Nassau",
    set %in% c("BTW_DW5","BTW_DW6","BTW_DW7", "BTW_DW8") ~ "Exuma",
    TRUE ~ NA_character_
  )) %>%
  left_join(
    effort_df %>% dplyr::select(set, depth, bottom_temp),
    by = "set"
  )

# 2) Summarise and pivot into a long table, then floor the lower CI at zero
summary_tbl <- cpue2 %>%
  group_by(region) %>%
  summarise(
    cpue_traphour_mean = mean(cpue_per_trap_hour),
    cpue_traphour_sd   = sd(cpue_per_trap_hour),
    cpue_trap_mean     = mean(cpue_per_trap),
    cpue_trap_sd       = sd(cpue_per_trap),
    depth_mean         = mean(depth, na.rm=TRUE),
    depth_sd           = sd(depth, na.rm=TRUE),
    temp_mean          = mean(bottom_temp, na.rm=TRUE),
    temp_sd            = sd(bottom_temp, na.rm=TRUE)
  ) %>%
  pivot_longer(
    cols = -region,
    names_to  = c("metric","stat"),
    names_sep = "_(?=(mean|sd)$)"
  ) %>%
  pivot_wider(names_from = stat, values_from = value) %>%
  mutate(
    metric = recode(metric,
                    cpue_traphour = "Catch per Trap Hour",
                    depth         = "Depth (m)",
                    temp          = "Bottom temp (°C)",
                    cpue_trap     = "Catch per Trap"
    ),
    ci_lower = pmax(mean - sd, 0),    # floor at 0
    ci_upper = mean + sd
  ) %>%
  mutate(
    metric = factor(metric, levels = c(
      "Bottom temp (°C)",
      "Depth (m)",
      "Catch per Trap",
      "Catch per Trap Hour"
    ))
  )

# n = 34 individuals from screenshot of one trap
# catch per trap hour = (34 ind. * 14 traps)/(14 traps * 2 hours)
jpy_df = data.frame(region = c("Suruga Bay", "Suruga Bay", "Suruga Bay", "Suruga Bay"),
                    metric = c(
                      "Bottom temp (°C)",
                      "Depth (m)",
                      "Catch per Trap",
                      "Catch per Trap Hour"
                    ),
                    mean = c(NA, 473, 22.7, 3.24),
                    sd = c(NA, NA, 21.6, 3.09),
                    ci_lower = c(NA, NA, 11.4, 1.62),
                    ci_upper = c(NA, NA, 34, 4.86)
                    )

# summary_tbl = rbind(summary_tbl, jpy_df)    


# 3) Plot with custom fills and black axes
bg_cpue = ggplot(summary_tbl, aes(x = region, y = mean, fill = region)) +
  geom_col(width = 0.6, show.legend = FALSE) +
  geom_errorbar(aes(ymin = ci_lower, ymax = ci_upper),
                width = 0.2) +
  facet_wrap(~ metric, scales = "free_y", ncol = 2) +
  scale_fill_manual(
    values = c("Nassau" = "orange", "Exuma" = "turquoise", "Suruga Bay" = "red3")
  ) +
  labs(
    title = expression(paste("Relative Abundance of ", italic("B. giganteus"))),
    subtitle = expression(paste("Exuma and Nassau"))
  ) +
  theme_minimal(base_size = 14) +
  theme(
    panel.grid        = element_blank(),
    axis.line         = element_line(color = "black"),
    axis.ticks        = element_line(color = "black"),
    axis.text         = element_text(color = "black"),
    strip.text        = element_text(face = "bold"),
    plot.title        = element_text(face = "bold", size = 16),
    plot.subtitle     = element_text(size = 12)
  )
#################################################################################



# Save as PNG (raster at 300 dpi)
ggsave(
  filename = "../figures/bg_cpue.png",
  plot     = bg_cpue,
  width    = 8,      # in inches
  height   = 6,      # in inches
  dpi      = 300,
  units    = "in"
)

# Save as PDF (vector output)
ggsave(
  filename = "../figures/bg_cpue.pdf",
  plot     = bg_cpue,
  width    = 8,
  height   = 6,
  units    = "in"
)
