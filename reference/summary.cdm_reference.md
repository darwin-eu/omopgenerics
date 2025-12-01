# Summary a cdm reference

Summary a cdm reference

## Usage

``` r
# S3 method for class 'cdm_reference'
summary(object, ...)
```

## Arguments

- object:

  A cdm reference object.

- ...:

  For compatibility (not used).

## Value

A summarised_result object with a summary of the data contained in the
cdm.

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
  cdmName = "test"
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

summary(cdm)
#> # A tibble: 13 × 13
#>    result_id cdm_name group_name group_level strata_name strata_level
#>        <int> <chr>    <chr>      <chr>       <chr>       <chr>       
#>  1         1 test     overall    overall     overall     overall     
#>  2         1 test     overall    overall     overall     overall     
#>  3         1 test     overall    overall     overall     overall     
#>  4         1 test     overall    overall     overall     overall     
#>  5         1 test     overall    overall     overall     overall     
#>  6         1 test     overall    overall     overall     overall     
#>  7         1 test     overall    overall     overall     overall     
#>  8         1 test     overall    overall     overall     overall     
#>  9         1 test     overall    overall     overall     overall     
#> 10         1 test     overall    overall     overall     overall     
#> 11         1 test     overall    overall     overall     overall     
#> 12         1 test     overall    overall     overall     overall     
#> 13         1 test     overall    overall     overall     overall     
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
