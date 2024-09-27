#### Preamble ####
# Purpose: Simulates data about Police Annual Statistical Report - Victims of Crimes 
# Author: Xiyan Chen
# Date: 24 September 2024 
# Contact: xiyan.chen@mail.utoronto.ca
# License: MIT
# Pre-requisites: installing R and "opendatatoronto"


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
start_year <- 2014
end_year <- 2023

#set the number of random year 
number_of_year <- 100

set.seed(123)

simulated_data <-
  tibble(
    date = 
      as.integer(runif(n = number_of_year, min = start_year, max = end_year)),
    victims_assulted = rpois(number_of_year, lambda = 100)
    )
head(simulated_data)

write_csv(simulated_data, file = "data/raw_data/simulated_data")

