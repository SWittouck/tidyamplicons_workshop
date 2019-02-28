library(tidyverse)
library(tidyamplicons)

# 1. load data
load("data/carrots.rda")

# 2. filter samples
fp <- filter_samples(carrots, type == "FP")

# 3. bar plot of day 01
fp %>%
  filter_samples(Day == "01") %>%
  bar_plot()

# 4. previous + genus level
fp %>%
  filter_samples(Day == "01") %>%
  aggregate_taxa(rank = "genus") %>%
  bar_plot()

# 5. filter taxa
fp_filtered <- filter_taxa(fp, family != "Chloroplasts", family != "Mitochondria")

# 6. sample plot of FP09
fp_filtered %>%
  filter_samples(fermentation == "FP09") %>%
  sample_plot(nrow = 3)

# 7. boxplot of alphas
fp_filtered %>%
  add_alphas() %>%
  samples() %>%
  ggplot(aes(x = Day, y = observed)) +
  geom_boxplot() +
  theme_bw()

# 8. PCoA plot
fp_filtered %>%
  add_pcoa() %>%
  samples() %>%
  ggplot(aes(x = pcoa1, y = pcoa2, col = Day)) +
  geom_point() +
  scale_color_brewer(palette = "Paired") +
  theme_bw()

# 9. differential abundance 
fp_filtered %>%
  filter_samples(Day %in% c("03", "30")) %>%
  aggregate_taxa(rank = "family") %>%
  add_occurrences(condition = "Day") %>%
  taxa() %>%
  ggplot(aes(x = occurrence_in_03, y = occurrence_in_30)) +
  geom_point() +
  theme_bw()
