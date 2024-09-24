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
number_of_year <- 10

set.seed(123)

simulated_data <-
  tibble(
    date = sample(2014:2023, size = number_of_year, replace = TRUE),
      #as.Date(runif(n = number_of_dates, min = as.numeric(as.Date("2014")),
                       #  max =  as.numeric(as.Date("2023")),)),
    #stimulates the number of victims that being assulted using a Possion Distribution
    victims_assulted = rpois(number_of_year, lambda = 100),
    victims_sexual_violation = rpois(number_of_year, lambda = 100)
  )
head(simulated_data)

write_csv(simulated_data, file = "data/raw_data/simulated_data")

