library(tidyverse)
# This data was originally downloaded from https://acleddata.com/data-export-tool/.
# on April 23, 2024 at 2:00 PM. I have compressed it here in order to be able to upload it to GitHub.
# write_csv(read_csv("data-raw/Asia-Pacific_2018-2024_Apr12.csv"), "asia_data.csv.gz")
PoliticalViolence <-  
  readr::read_csv("data-raw/asia_data.csv.gz") |>
  janitor::clean_names() |>
  select(-admin3,-timestamp) |>
  mutate(
    civilian_targeting = ifelse(is.na(civilian_targeting), FALSE,TRUE),
    crowd_size = ifelse(
      str_detect(tags,"crowd size"),abs(parse_number(tags)),NA
    )
  ) 

usethis::use_data(PoliticalViolence, overwrite = TRUE)

