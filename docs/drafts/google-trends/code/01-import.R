#=====================================================================#
# This is code to create: import google trends
# Authored by and feedback to: mjfrigaard
# MIT License
# Version: 1.0
#=====================================================================#


# packages  ---------------------------------------------------------------
library(tidyverse)
library(janitor)
# devtools::install_github("PMassicotte/gtrendsR")
library(gtrendsR)


# import google trends ----------------------------------------------------
MetaverseTrendsRaw <- gtrendsR::gtrends(keyword = "metaverse",
  time = "today 12-m", gprop = "web")


