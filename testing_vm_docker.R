# Load required Packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(sf, tidyverse, lwgeom, maps, mapdata, 
               spData, tigris, tmap, tmaptools, tidyr, 
               dplyr, purrr, ggplot2, tidycensus, units, 
               parallel, future, future.apply, furrr, 
               RhpcBLASctl, googleComputeEngineR, tictoc, install = T)

# Grab shapefile from NEXUS lanes project
counties <- st_read("counties.shp")

# Expensive procedure: create map of US from county Geometries 
tic()
US_base <- st_union(counties$geometry)  # 86.774 seconds
toc()










