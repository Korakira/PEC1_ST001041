## ============================================
## 01 - Instalación y carga de paquetes necesarios
## ============================================

# 1 Instalar el gestor de paquetes Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

# 2 Paquetes Bioconductor (para datos ómicos y ExpressionSet)
BiocManager::install(c("Biobase", "GEOquery"))

a
# Instalar los que falten
for (pkg in paquetes) {
  if (!requireNamespace(pkg, quietly = TRUE))
    install.packages(pkg)
}

# 4 Cargar de todos los paquetes
lapply(c("tidyverse", "readr", "dplyr", "ggplot2", 
         "Biobase", "GEOquery", "SummarizedExperiment", "pheatmap", "here"), library, character.only = TRUE)

