#### Preamble ####
# Purpose: Downloads and saves the data from "opendatatoronto"
# Author: Xiyan Chen 
# Date: 24 September 2024 
# Contact: xiyan.chen@mail.utoronto.ca
# License: MIT
# Pre-requisites: installing R and "opendatatoronto"


#### Workspace setup ####
library(opendatatoronto)
library(dplyr)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
# get package
package <- show_package("police-annual-statistical-report-victims-of-crime")
package

# get all resources for this package
resources <- list_package_resources("police-annual-statistical-report-victims-of-crime")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data

#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write.csv(data, "Victims of Crime.csv") 

         
