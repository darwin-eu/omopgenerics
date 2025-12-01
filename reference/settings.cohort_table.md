# Get cohort settings from a cohort_table object.

Get cohort settings from a cohort_table object.

## Usage

``` r
# S3 method for class 'cohort_table'
settings(x)
```

## Arguments

- x:

  A cohort_table object.

## Value

A table with the details of the cohort settings.

## Examples

``` r
library(omopgenerics)
library(dplyr, warn.conflicts = FALSE)

person <- tibble(
  person_id = 1, gender_concept_id = 0, year_of_birth = 1990,
  race_concept_id = 0, ethnicity_concept_id = 0
)
observation_period <- tibble(
  observation_period_id = 1, person_id = 1,
  observation_period_start_date = as.Date("2000-01-01"),
  observation_period_end_date = as.Date("2023-12-31"),
  period_type_concept_id = 0
)
cohort <- tibble(
  cohort_definition_id = 1,
  subject_id = 1,
  cohort_start_date = as.Date("2010-01-01"),
  cohort_end_date = as.Date("2012-01-01")
)
cdm <- cdmFromTables(
  tables = list("person" = person, "observation_period" = observation_period),
  cdmName = "test",
  cohortTables = list("my_cohort" = cohort)
)
#> Warning: ! 5 casted column in person as do not match expected column type:
#> • `person_id` from numeric to integer
#> • `gender_concept_id` from numeric to integer
#> • `year_of_birth` from numeric to integer
#> • `race_concept_id` from numeric to integer
#> • `ethnicity_concept_id` from numeric to integer
#> Warning: ! 3 casted column in observation_period as do not match expected column type:
#> • `observation_period_id` from numeric to integer
#> • `person_id` from numeric to integer
#> • `period_type_concept_id` from numeric to integer
#> Warning: ! 2 casted column in my_cohort as do not match expected column type:
#> • `cohort_definition_id` from numeric to integer
#> • `subject_id` from numeric to integer

settings(cdm$my_cohort)
#> # A tibble: 1 × 2
#>   cohort_definition_id cohort_name
#>                  <int> <chr>      
#> 1                    1 cohort_1   

cdm$my_cohort <- cdm$my_cohort |>
  newCohortTable(cohortSetRef = tibble(
    cohort_definition_id = 1, cohort_name = "new_name"
  ))

settings(cdm$my_cohort)
#> # A tibble: 1 × 2
#>   cohort_definition_id cohort_name
#>                  <dbl> <chr>      
#> 1                    1 new_name   
```
