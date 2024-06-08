library(tidyverse)
library(here)

# Load data

tv_hrs_table <- gss_cat %>% 
  # Filter to only include those with age above 30
  filter(age >= 30) %>%
  group_by(marital) %>%
  summarise(mean_tvhrs = mean(tvhours, na.rm = TRUE))


# Save data as a .csv file
write_csv(tv_hrs_table, here("tv_hrs_table.csv"))
