library(tidyverse)
foo <-  # change this name
  readr::read_csv("data-raw/pdga-approved-disc-golf-discs_2020-10-04T15-02-04.csv") |>
  janitor::clean_names() |>
  mutate(
    model = iconv(disc_model, "latin1", "ASCII", sub = ""),
    approved_date = lubridate::mdy(approved_date)
  ) |>
  rename(
    diameter = diameter_cm,
    flexibility = flexibility_kg,
    height = height_cm,
    manufacturer = manufacturer_distributor,
    rim_depth = rim_depth_cm,
    rim_thickness = rim_thickness_cm,
    weight = max_weight_gr
  ) %>%
  select(
    approved_date, class, diameter, flexibility, height,
    manufacturer, model, rim_depth, rim_thickness, weight
  )
usethis::use_data(foo)  # change this name
