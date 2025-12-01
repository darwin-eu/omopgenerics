# Cohort tables that a cdm reference can contain in the OMOP Common Data Model.

Cohort tables that a cdm reference can contain in the OMOP Common Data
Model.

## Usage

``` r
cohortTables(version = "5.3")
```

## Arguments

- version:

  Version of the OMOP Common Data Model.

## Value

cohort tables

## Examples

``` r
# \donttest{
library(omopgenerics)
cohortTables()
#> [1] "cohort"           "cohort_set"       "cohort_attrition" "cohort_codelist" 
# }
```
