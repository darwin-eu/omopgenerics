# Create an empty cohort_table object

Create an empty cohort_table object

## Usage

``` r
emptyCohortTable(cdm, name, overwrite = TRUE)
```

## Arguments

- cdm:

  A cdm_reference to create the table.

- name:

  Name of the table to create.

- overwrite:

  Whether to overwrite an existent table.

## Value

The cdm_reference with an empty cohort table

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

cdm <- emptyCohortTable(cdm, "my_empty_cohort")

cdm
#> 
#> ── # OMOP CDM reference (local) of test ────────────────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: my_empty_cohort
#> • achilles tables: -
#> • other tables: -
cdm$my_empty_cohort
#> # A tibble: 0 × 4
#> # ℹ 4 variables: cohort_definition_id <int>, subject_id <int>,
#> #   cohort_start_date <date>, cohort_end_date <date>
settings(cdm$my_empty_cohort)
#> # A tibble: 0 × 2
#> # ℹ 2 variables: cohort_definition_id <int>, cohort_name <chr>
attrition(cdm$my_empty_cohort)
#> # A tibble: 0 × 7
#> # ℹ 7 variables: cohort_definition_id <int>, number_records <int>,
#> #   number_subjects <int>, reason_id <int>, reason <chr>,
#> #   excluded_records <int>, excluded_subjects <int>
cohortCount(cdm$my_empty_cohort)
#> # A tibble: 0 × 3
#> # ℹ 3 variables: cohort_definition_id <int>, number_records <int>,
#> #   number_subjects <int>
```
