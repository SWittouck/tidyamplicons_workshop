# Tidyamplicons workshop

This repository contains the material for a workshop on processing 16S amplicon abundance data with the [tidyamplicons](https://github.com/SWittouck/tidyamplicons) R package.

You can find the slides over [here](https://docs.google.com/presentation/d/1cr2DHHxergx4wpEGC-tu0mhxaTABftVL88VF91r-cO0/edit?usp=sharing).

## Requirements

Before the workshop, make sure you install R and RStudio:

* [R](https://www.freestatistics.org/cran/)
* [RStudio](https://www.rstudio.com/products/rstudio/download/#download)

To install the tidyverse and tidyamplicons, run the following R code:

```{R}
install.packages("tidyverse")
devtools::install_github("swittouck/tidyamplicons", ref = "development")
```
