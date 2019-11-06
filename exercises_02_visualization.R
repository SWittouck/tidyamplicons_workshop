library(tidyverse)
library(tidyamplicons)

# 1. import data
samples <- read_tsv("data/enterotypes/sampledata.tsv")

# 2. inspect variables
glimpse(samples)
View(samples)

# 3. plot gender
ggplot(samples, aes(x = gender)) +
  geom_bar() +
  theme_bw()

# 4. plot nationality
ggplot(samples, aes(x = nationality, fill = gender)) +
  geom_bar() +
  scale_fill_brewer(palette = "Paired") +
  theme_bw()

# 5. age boxplot
ggplot(samples, aes(x = nationality, y = age, fill = nationality)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Paired") +
  theme_bw()

# 6. previous + points
ggplot(samples, aes(x = nationality, y = age, fill = nationality)) +
  geom_boxplot() +
  geom_jitter(col = "grey", alpha = 0.5, height = 0) + 
  scale_fill_brewer(palette = "Paired") +
  theme_bw()

# 7. age density
ggplot(samples, aes(x = age, fill = gender)) +
  geom_density(alpha = 0.5) +
  facet_wrap(~ nationality) +
  theme_bw()
