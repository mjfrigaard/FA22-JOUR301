#=====================================================================#
# This is code to create: 01-create-usada-data.R
# Authored by and feedback to: @mjfrigaard
# MIT License
# Version: 01
#=====================================================================#


# packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)
library(tibble)
library(janitor)

scrape_usada <- function() {
  usada_url <- "https://www.usada.org/testing/results/sanctions/"
  usada_extraction <- rvest::read_html(usada_url) |> rvest::html_nodes("table")
  usada_raw <- rvest::html_table(usada_extraction[[1]])
  usada <- janitor::clean_names(usada_raw)
  usada <- tibble::add_column(usada, timestamp = Sys.Date())
  return(usada)
}
