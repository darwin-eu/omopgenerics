# Summary a summarised_result

Summary a summarised_result

## Usage

``` r
# S3 method for class 'summarised_result'
summary(object, ...)
```

## Arguments

- object:

  A summarised_result object.

- ...:

  For compatibility (not used).

## Value

A summary of the result_types contained in a summarised_result object.

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

result <- summary(cdm)

summary(result)
#> A summarised_result object with 13 rows, 1 different result_id, 1 different cdm
#> names, and 7 settings.
#> CDM names: test.
#> Settings: result_type, package_name, package_version, group, strata,
#> additional, and min_cell_count.
```
