# Summarise a generated cohort set

Summarise a generated cohort set

## Usage

``` r
# S3 method for class 'cohort_table'
summary(object, ...)
```

## Arguments

- object:

  A cdm source object.

- ...:

  For compatibility; not used.

## Value

A summarised_result object with a summary of a cohort_table.

## Examples

``` r
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
cdm <- cdmFromTables(
  tables = list("person" = person, "observation_period" = observation_period),
  cdmName = "test",
  cohortTables = list("cohort1" = tibble(
    cohort_definition_id = 1,
    subject_id = 1,
    cohort_start_date = as.Date("2010-01-01"),
    cohort_end_date = as.Date("2010-01-05")
  ))
)
#> Warning: ! 5 cast column in person as do not match the expected column type:
#> • `person_id` from numeric to integer
#> • `gender_concept_id` from numeric to integer
#> • `year_of_birth` from numeric to integer
#> • `race_concept_id` from numeric to integer
#> • `ethnicity_concept_id` from numeric to integer
#> Warning: ! 3 cast column in observation_period as do not match the expected column type:
#> • `observation_period_id` from numeric to integer
#> • `person_id` from numeric to integer
#> • `period_type_concept_id` from numeric to integer
#> Warning: ! 2 cast column in cohort1 as do not match the expected column type:
#> • `cohort_definition_id` from numeric to integer
#> • `subject_id` from numeric to integer

summary(cdm$cohort1)
#> `cohort_definition_id` cast to character.
#> `cohort_definition_id` cast to character.
#> # A tibble: 6 × 13
#>   result_id cdm_name group_name  group_level strata_name strata_level           
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>                  
#> 1         1 test     cohort_name cohort_1    overall     overall                
#> 2         1 test     cohort_name cohort_1    overall     overall                
#> 3         2 test     cohort_name cohort_1    reason      Initial qualifying eve…
#> 4         2 test     cohort_name cohort_1    reason      Initial qualifying eve…
#> 5         2 test     cohort_name cohort_1    reason      Initial qualifying eve…
#> 6         2 test     cohort_name cohort_1    reason      Initial qualifying eve…
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
