# README

This package contains common templates required by the biostatisticians at USyd and the Kids.

Currently contains the review process templates and vignette.

## Installation

After cloning the package from github:

```
library(devtools)
document()
devtools::install(build_vignettes = TRUE)
```

or just install direct from github.

```
install.packages(c("devtools"))
devtools::install_github("maj-biostat/templastats")
```

If you want to ensure that `templastats` is always loaded then include 

```
library(templastats)
```

in your `.Rprofile` file.

## Usage

See the vignettes for process guidance.

## Todo 

What things not fully clear on ?

1. State transition for status of products


