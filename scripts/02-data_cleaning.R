#### Preamble ####
# Purpose: Cleans the raw data and prepares the data for analysis
# Author: Xiyan Chen
# Date: 24 September 2024 
# Contact: xiyan.chen@mail.utoronto.ca
# License: MIT
# Pre-requisites: installing R and "opendatatoronto" and download "crime" data
# Any other information needed? no

#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Clean data ####
raw_data <- read_csv("data/raw_data/crime.csv")

cleaned_data <- raw_data %>% 
  select(REPORT_YEAR, SUBTYPE,SEX,COUNT_) %>%
  mutate(
    REPORT_YEAR = as.numeric(REPORT_YEAR),
    COUNT_ = as.numeric(COUNT_)
    ) %>% 
  drop_na()

#### Save data ####
write_csv(cleaned_data, "data/raw_data/analysis_data.csv")
