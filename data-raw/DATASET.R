library(tidyverse)
# This data was originally downloaded from https://acleddata.com/data-export-tool/.
# on May 3, 2024 at 5:36 PM. I have compressed it here in order to be able to upload it to GitHub.
write_csv(read_csv("data-raw/Asia-Pacific_2018-2024_Apr26.csv"), "data-raw/asia_data.csv.gz")
# These two CSV files were manually created by taking information directly out of the 2023 ACLED codebook
# at https://acleddata.com/acleddatanew/wp-content/uploads/dlm_uploads/2023/06/ACLED_Codebook_2023.pdf
actor_codes <- read_csv("data-raw/acled_codebook_actor_codes.csv") |>
  select("'Inter Code'", Name) |>
  setNames(c("Code", "Actor Description"))
interaction_codes <- read_csv("data-raw/acled_codebook_interaction_codes.csv") |>
  select("‘Interaction’ code",Description) |>
  setNames(c("Code","Interaction Description"))
# Wrangling and merging
PoliticalViolence <-  
  readr::read_csv("data-raw/asia_data.csv.gz") |>
  janitor::clean_names() |>
  select(-admin3,-timestamp) |>
  mutate(
    civilian_targeting = ifelse(is.na(civilian_targeting), FALSE,TRUE),
    crowd_size = ifelse(
      str_detect(tags,"crowd size"),abs(parse_number(tags)),NA
    )
  ) |>
  inner_join(interaction_codes, by = c("interaction" = "Code")) |>
  rename("interaction_type" = "Interaction Description") |>
  inner_join(actor_codes, by = c("inter1" = "Code")) |>
  rename("actor_1_desc" = "Actor Description") |>
  left_join(actor_codes, by = c("inter2" = "Code")) |>
  rename("actor_2_desc" = "Actor Description") |>
  relocate(interaction_type, .before = interaction) |>
  relocate(actor_1_desc, .before = inter1) |>
  relocate(actor_2_desc, .before = inter2) |>
  select(-interaction,-inter1,-inter2)
usethis::use_data(PoliticalViolence, overwrite = TRUE)

