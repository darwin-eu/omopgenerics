# Bind two or summarised_result objects

Bind two or summarised_result objects

## Usage

``` r
# S3 method for class 'summarised_result'
bind(...)
```

## Arguments

- ...:

  summarised_result objects

## Value

A summarised_result object the merged objects.

## Examples

``` r
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
  cdmName = "mock",
  cohortTables = list("cohort1" = tibble(
    cohort_definition_id = 1,
    subject_id = 1:3,
    cohort_start_date = as.Date("2010-01-01"),
    cohort_end_date = as.Date("2010-01-05")
  ))
)
#> Warning: ! 5 casted column in person as do not match expected column type:
#> • `person_id` from numeric to integer
#> • `gender_concept_id` from numeric to integer
#> • `year_of_birth` from numeric to integer
#> • `race_concept_id` from numeric to integer
#> • `ethnicity_concept_id` from numeric to integer
#> Warning: ! 1 casted column in observation_period as do not match expected column type:
#> • `period_type_concept_id` from numeric to integer
#> Warning: ! 1 casted column in cohort1 as do not match expected column type:
#> • `cohort_definition_id` from numeric to integer

result1 <- summary(cdm)
result2 <- summary(cdm$cohort1)
#> `cohort_definition_id` casted to character.
#> `cohort_definition_id` casted to character.

mergedResult <- bind(result1, result2)
mergedResult
#> # A tibble: 19 × 13
#>    result_id cdm_name group_name  group_level strata_name strata_level          
#>        <int> <chr>    <chr>       <chr>       <chr>       <chr>                 
#>  1         1 mock     overall     overall     overall     overall               
#>  2         1 mock     overall     overall     overall     overall               
#>  3         1 mock     overall     overall     overall     overall               
#>  4         1 mock     overall     overall     overall     overall               
#>  5         1 mock     overall     overall     overall     overall               
#>  6         1 mock     overall     overall     overall     overall               
#>  7         1 mock     overall     overall     overall     overall               
#>  8         1 mock     overall     overall     overall     overall               
#>  9         1 mock     overall     overall     overall     overall               
#> 10         1 mock     overall     overall     overall     overall               
#> 11         1 mock     overall     overall     overall     overall               
#> 12         1 mock     overall     overall     overall     overall               
#> 13         1 mock     overall     overall     overall     overall               
#> 14         2 mock     cohort_name cohort_1    overall     overall               
#> 15         2 mock     cohort_name cohort_1    overall     overall               
#> 16         3 mock     cohort_name cohort_1    reason      Initial qualifying ev…
#> 17         3 mock     cohort_name cohort_1    reason      Initial qualifying ev…
#> 18         3 mock     cohort_name cohort_1    reason      Initial qualifying ev…
#> 19         3 mock     cohort_name cohort_1    reason      Initial qualifying ev…
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
