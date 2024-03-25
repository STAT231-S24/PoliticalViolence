library(tidyverse)
library(stringr)
PoliticalViolence <-  
  readxl::read_xlsx("data-raw/asia_political_violence.xlsx") |>
  janitor::clean_names() |>
  select(-admin3,-timestamp) |>
  mutate(
    civilian_targeting = ifelse(is.na(civilian_targeting), FALSE,TRUE),
    crowd_size = ifelse(
      str_detect(tags,"crowd size"),abs(parse_number(tags)),NA
    )
  ) 
usethis::use_data(PoliticalViolence, overwrite = TRUE)

