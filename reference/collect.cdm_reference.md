# Retrieves the cdm reference into a local cdm.

Retrieves the cdm reference into a local cdm.

## Usage

``` r
# S3 method for class 'cdm_reference'
collect(x, ...)
```

## Arguments

- x:

  A cdm_reference object.

- ...:

  For compatibility only, not used.

## Value

A local cdm_reference.

## Examples

``` r
# \donttest{
library(omopgenerics)
library(dplyr, warn.conflicts = FALSE)

cdm <- cdmFromTables(
  tables = list(
    "person" = dplyr::tibble(
      person_id = c(1, 2, 3), gender_concept_id = 0, year_of_birth = 1990,
      race_concept_id = 0, ethnicity_concept_id = 0
    ),
    "observation_period" = dplyr::tibble(
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

collect(cdm)
#> 
#> ── # OMOP CDM reference (local) of mock ────────────────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: -
#> • achilles tables: -
#> • other tables: -
# }
```
