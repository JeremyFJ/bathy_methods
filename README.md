# Bathynomus Methods Repository

This repository contains code and data supporting the study of giant deep-sea isopods (*Bathynomus* spp.), including global observation records, protein family analyses, and modeling of environmental DNA (eDNA) particle trajectories in Japanese waters. It accompanies the publication:

**Jenrette et al. (2025)**  
*Giant isopods of the genus Bathynomus: global distribution and new insights into the genomic adaptations of B. giganteus.*  
(See manuscript for full details and methodology.)

---

## Repository Structure

```
├── data/ # Source data and reference tables
│ ├── btw.sql # SQL schema for isopod observation database
│ ├── proteins_* # Domain summary tables for targeted protein families
│
├── doc/ # Documentation and supplementary notes
│
├── fig/ # Figures used in the manuscript
│ ├── field_surveys.pdf
│ ├── global_obs.pdf
│ └── japan_March2024.png
│
├── s/ # Scripts for data sourcing, analysis, and modeling
│ ├── cpue.R # Catch-per-unit-effort analyses
│ ├── get_inat_obs2.R # iNaturalist data ingestion
│ ├── protein_domains.R # Comparative protein domain analysis
│ ├── source_bathy.R # Global Bathynomus observational data pipeline
│ └── edna_particle/ # eDNA particle trajectory models
│ ├── abundance3.R
│ ├── japan_cur.R
│ ├── japan_ssh.R
│ ├── japan_sst.R
│ ├── japan.py
│ └── pelagicegg.py
│
└── README.md
```


---

## Contents

- **Global Observations**  
  Scripts for sourcing and integrating *Bathynomus* records from iNaturalist, GBIF, OBIS, and literature.

- **Genomic Analyses**  
  Comparative domain summaries of protein families (lipase, Hsp60, SOD, glycogen phosphorylase) in *B. giganteus* and *B. jamesi*.

- **eDNA Modeling**  
  R and Python scripts to simulate particle dispersal and abundance patterns in Suruga Bay, Japan, using SST, SSH, and current data.

- **Figures and Results**  
  Key visualizations of global distribution, field surveys, and modeled eDNA landscapes.

---

## Citation

If you use this repository, please cite:

> Jenrette, J.F., Riehl, T., Kuramae Izioka, A., Motoki, S., Aldridge, S.E., Tokunaga, S., Watanabe, Y.Y., & Gallagher, A.J. (2025). *Giant isopods of the genus Bathynomus: global distribution and new insights into the genomic adaptations of B. giganteus.* Deep-Sea Research Part I.  

---

## Contact

For questions or collaborations, please contact the corresponding author:  
**Jeremy F. Jenrette** – [jeremy@beneaththewaves.org](mailto:jeremy@beneaththewaves.org)
