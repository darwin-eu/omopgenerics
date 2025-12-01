# Names of the tables that contain the results of achilles analyses

Names of the tables that contain the results of achilles analyses

## Usage

``` r
achillesTables(version = "5.3")
```

## Arguments

- version:

  Version of the OMOP Common Data Model.

## Value

Names of the tables that are contain the results from the achilles
analyses

## Examples

``` r
# \donttest{
library(omopgenerics)
achillesTables()
#> [1] "achilles_analysis"     "achilles_results"      "achilles_results_dist"
# }
```
