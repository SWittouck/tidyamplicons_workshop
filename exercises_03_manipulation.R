library(tidyverse)
library(tidyamplicons)

# 1. import data
samples <- read_tsv("data/enterotypes/sampledata.tsv")

# 2. filter, select, mutate
samples %>%
  filter(! is.na(nationality), ! is.na(bmi_group)) %>%
  select(nationality, bmi_group) %>%
  mutate(nationality = str_to_upper(nationality))