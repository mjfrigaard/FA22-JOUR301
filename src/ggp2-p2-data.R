
# packages ----------------------------------------------------------------
library(tidyverse)
library(tidytuesdayR)
library(zipcodeR)
library(tigris)
library(readr)


# data --------------------------------------------------------------------
# these data come form the TidyTuesday website 
tuesdata <- tidytuesdayR::tt_load(2021, week = 20)
broadband <- tuesdata$broadband
broadband_zip <- tuesdata$broadband_zip
# export raw data 
write_csv(x = broadband, file = paste0("./data/", 
  base::noquote(lubridate::today()), "-broadband.csv"))
write_csv(x = broadband_zip, file = paste0("./data/", 
  base::noquote(lubridate::today()), "-broadband_zip.csv"))

