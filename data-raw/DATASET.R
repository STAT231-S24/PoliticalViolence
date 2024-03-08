library(tidyverse)
PoliticalViolence <-  
  readxl::read_xlsx("data-raw/asia_political_violence.xlsx") |>
  janitor::clean_names() 
usethis::use_data(PoliticalViolence)  
