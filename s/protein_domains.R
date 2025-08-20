# Comparative Domain Analysis Script
# This script reads domain summary .tsv files for multiple gene families
# and combines them into comparative tables.

library(tidyverse)

# Protein families and species
protein_families <- c("lipase", "sod", "hsp60", "glycogen")
species <- c("jamesi", "bgi")

# Initialize list to collect data
all_domains <- list()

# Loop through families and species
for (protein in protein_families) {
  for (sp in species) {
    file_path <- file.path("../data/proteins", protein, sp,
                           paste0(protein, "_domain_summary.tsv"))
    if (file.exists(file_path)) {
      # Read space-delimited file, no header, fill missing
      df <- read.table(file_path,
                       header = FALSE,
                       sep = "",
                       fill = TRUE,
                       stringsAsFactors = FALSE,
                       col.names = c("Domain", "Accession", "UniqueCount", "Evalue", "Score"))
      # Convert types
      df <- df %>%
        mutate(
          UniqueCount = as.integer(UniqueCount),
          Evalue = as.numeric(Evalue),
          Score = as.numeric(Score),
          Protein_Family = protein,
          Species = sp
        )
      all_domains[[paste(protein, sp, sep = "_")]] <- df
    } else {
      warning("File not found: ", file_path)
    }
  }
}

# Combine all data into one dataframe
domain_df <- bind_rows(all_domains)

# View combined data
domain_df %>%
  arrange(Protein_Family, Species, desc(UniqueCount)) %>%
  head()

# Summarize by family and species
summary_table <- domain_df %>%
  group_by(Protein_Family, Species) %>%
  summarise(
    Total_Unique_Domains = n_distinct(Domain),
    Total_Proteins = sum(UniqueCount, na.rm = TRUE),
    Avg_Score = mean(Score, na.rm = TRUE),
    .groups = "drop"
  )

# Print summary
print(summary_table)

# Write outputs
write_csv(domain_df, "detailed_domain_counts.csv")
write_csv(summary_table, "../figures/comparative_domain_summary.csv")
