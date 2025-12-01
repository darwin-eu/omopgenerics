# Update cohort attrition.

Update cohort attrition.

## Usage

``` r
recordCohortAttrition(cohort, reason, cohortId = NULL)
```

## Arguments

- cohort:

  A cohort_table object.

- reason:

  A character string.

- cohortId:

  Cohort definition id of the cohort to update attrition. If NULL all
  cohort_definition_id are updated.

## Value

cohort_table with updated attrition.

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
  cohort_definition_id = c(1, 1, 1, 2),
  subject_id = 1,
  cohort_start_date = as.Date(c("2020-01-01", "2021-01-01", "2022-01-01", "2022-01-01")),
  cohort_end_date = as.Date(c("2020-01-01", "2021-01-01", "2022-01-01", "2022-01-01")),
)
cdm <- cdmFromTables(
  tables = list("person" = person, "observation_period" = observation_period),
  cdmName = "my_example_cdm",
  cohortTables = list("cohort1" = cohort)
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
#> Warning: ! 2 casted column in cohort1 as do not match expected column type:
#> • `cohort_definition_id` from numeric to integer
#> • `subject_id` from numeric to integer

cdm$cohort1
#> # A tibble: 4 × 4
#>   cohort_definition_id subject_id cohort_start_date cohort_end_date
#>                  <int>      <int> <date>            <date>         
#> 1                    1          1 2020-01-01        2020-01-01     
#> 2                    1          1 2021-01-01        2021-01-01     
#> 3                    1          1 2022-01-01        2022-01-01     
#> 4                    2          1 2022-01-01        2022-01-01     
attrition(cdm$cohort1)
#> # A tibble: 2 × 7
#>   cohort_definition_id number_records number_subjects reason_id reason          
#>                  <int>          <int>           <int>     <int> <chr>           
#> 1                    1              3               1         1 Initial qualify…
#> 2                    2              1               1         1 Initial qualify…
#> # ℹ 2 more variables: excluded_records <int>, excluded_subjects <int>

cdm$cohort1 <- cdm$cohort1 |>
  group_by(cohort_definition_id, subject_id) |>
  filter(cohort_start_date == min(cohort_start_date)) |>
  ungroup() |>
  compute(name = "cohort1", temporary = FALSE) |>
  recordCohortAttrition("Restrict to first observation")

cdm$cohort1
#> # A tibble: 2 × 4
#>   cohort_definition_id subject_id cohort_start_date cohort_end_date
#> *                <int>      <int> <date>            <date>         
#> 1                    1          1 2020-01-01        2020-01-01     
#> 2                    2          1 2022-01-01        2022-01-01     
attrition(cdm$cohort1)
#> # A tibble: 4 × 7
#>   cohort_definition_id number_records number_subjects reason_id reason          
#>                  <int>          <int>           <int>     <int> <chr>           
#> 1                    1              3               1         1 Initial qualify…
#> 2                    1              1               1         2 Restrict to fir…
#> 3                    2              1               1         1 Initial qualify…
#> 4                    2              1               1         2 Restrict to fir…
#> # ℹ 2 more variables: excluded_records <int>, excluded_subjects <int>
```
