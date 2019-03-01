if (!require("pacman")) install.packages("pacman")
pacman::p_load(sf, tidyverse, lwgeom, maps, mapdata, 
               spData, tigris, tmap, tmaptools, tidyr, 
               dplyr, purrr, ggplot2, tidycensus, units, 
               parallel, future, future.apply, furrr, 
               RhpcBLASctl, googleComputeEngineR, tictoc, install = T)

# grab shapefile from NEXUS lanes project
counties <- st_read("counties.shp")
