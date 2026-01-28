# Get settings from a summarised_result object.

Get settings from a summarised_result object.

## Usage

``` r
# S3 method for class 'summarised_result'
settings(x)
```

## Arguments

- x:

  A summarised_result object.

## Value

A table with the settings.

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

result <- summary(cdm$my_cohort)
#> `cohort_definition_id` casted to character.
#> `cohort_definition_id` casted to character.

settings(result)
#> # A tibble: 2 × 10
#>   result_id result_type     package_name package_version group strata additional
#>       <int> <chr>           <chr>        <chr>           <chr> <chr>  <chr>     
#> 1         1 cohort_count    omopgenerics 1.3.6           coho… ""     ""        
#> 2         2 cohort_attriti… omopgenerics 1.3.6           coho… "reas… "reason_i…
#> # ℹ 3 more variables: min_cell_count <chr>, cohort_definition_id <chr>,
#> #   table_name <chr>
```
