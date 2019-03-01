pacman::p_load(tidyr, tidyverse, dplyr, plyr, readr, tidycensus, tigris, sf, maptools)

# Call up census API key
options(tigris_class = "sf")
options(tigris_use_cache = TRUE)
tidycensus::census_api_key("76eed5e2f67081d04c13b12ae20b0695817b7d68", 
                           install = T, overwrite = T)

# Fetch geometries from census
cens <- get_acs(geography = "county", variables = "B02001_001", 
                year = 2010, output = "wide", geometry = T)
cens$year = rep(2010, 3221)
cens10 <- cens
st_write(cens10,"counties.shp")