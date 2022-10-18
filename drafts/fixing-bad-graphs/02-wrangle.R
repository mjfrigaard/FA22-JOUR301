# packages ----------------------------------------------------------------
library(dplyr)
library(tidyr)
library(janitor)


# change date to date format  --------------------------------------
Brexit <- Brexit %>% mutate(date = lubridate::dmy(date))


# create TidyBrexit dataset  ----------------------------------------------
TidyBrexit <- Brexit %>% 
  tidyr::pivot_longer(-date,
                      names_to = "poll",
                      values_to = "percent")
