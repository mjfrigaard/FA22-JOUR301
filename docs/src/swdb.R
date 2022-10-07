library(starwarsdb)
library(tidyverse)
library(vroom)

sw_planets <- starwarsdb::planets
sw_pilots <- starwarsdb::pilots
sw_people <- starwarsdb::people
sw_species <- starwarsdb::species

peop_veh <- left_join(x = sw_people, y = sw_pilots, by = c('name' = 'pilot')) %>% 
  dplyr::group_by(name) %>% 
  dplyr::mutate(
    vehicle = paste0(vehicle, collapse = ", ")
  ) %>% 
  dplyr::ungroup() %>% 
  dplyr::distinct() 

sw_species <- dplyr::rename(sw_species, origin = homeworld)

people_veh_spec <- dplyr::left_join(x = peop_veh, y = sw_species, by = c('species' = 'name')) %>% 
  dplyr::rename(
    species_class = classification, 
    species_desig = designation) %>% 
  dplyr::select(name:sex, species_class, species_desig, vehicle)

big_starwars <- dplyr::left_join(x = people_veh_spec, 
  y = sw_planets, by = c('homeworld' = 'name')) %>% 
  dplyr::rename(
    hw_climate = climate,
    hw_terrain = terrain,
    hw_pop = population,
    hw_gravity = gravity) %>% 
  dplyr::select(
    name:vehicle, starts_with("hw_"))

vroom::vroom_write(x = big_starwars, file = "data/big_starwars.csv", delim = ",")
