# Subset a cdm reference object.

Subset a cdm reference object.

## Usage

``` r
# S3 method for class 'cdm_reference'
x[[name]]
```

## Arguments

- x:

  A cdm reference

- name:

  The name or index of the table to extract from the cdm object.

## Value

A single cdm table reference

## Examples

``` r
# \donttest{
library(omopgenerics)
library(dplyr, warn.conflicts = FALSE)

cdm <- cdmFromTables(
  tables = list(
    "person" = tibble(
      person_id = c(1, 2, 3), gender_concept_id = 0, year_of_birth = 1990,
      race_concept_id = 0, ethnicity_concept_id = 0
    ),
    "observation_period" = tibble(
      observation_period_id = 1:3, person_id = 1:3,
      observation_period_start_date = as.Date("2000-01-01"),
      observation_period_end_date = as.Date("2023-12-31"),
      period_type_concept_id = 0
    )
  ),
  cdmName = "mock"
)
#> Warning: ! 5 casted column in person as do not match expected column type:
#> • `person_id` from numeric to integer
#> • `gender_concept_id` from numeric to integer
#> • `year_of_birth` from numeric to integer
#> • `race_concept_id` from numeric to integer
#> • `ethnicity_concept_id` from numeric to integer
#> Warning: ! 1 casted column in observation_period as do not match expected column type:
#> • `period_type_concept_id` from numeric to integer

cdm[["person"]]
#> # A tibble: 3 × 5
#>   person_id gender_concept_id year_of_birth race_concept_id ethnicity_concept_id
#>       <int>             <int>         <int>           <int>                <int>
#> 1         1                 0          1990               0                    0
#> 2         2                 0          1990               0                    0
#> 3         3                 0          1990               0                    0
# }
```
