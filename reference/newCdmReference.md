# `cdm_reference` objects constructor

`cdm_reference` objects constructor

## Usage

``` r
newCdmReference(tables, cdmName, cdmVersion = NULL, .softValidation = FALSE)
```

## Arguments

- tables:

  List of tables that are part of the OMOP Common Data Model reference.

- cdmName:

  Name of the cdm object.

- cdmVersion:

  Version of the cdm. Supported versions 5.3 and 5.4.

- .softValidation:

  Whether to perform a soft validation of consistency. If set to FALSE,
  non overlapping observation periods are ensured.

## Value

A `cdm_reference` object.

## Examples

``` r
# \donttest{
library(omopgenerics)
library(dplyr, warn.conflicts = FALSE)

cdmTables <- list(
  "person" = tibble(
    person_id = 1, gender_concept_id = 0, year_of_birth = 1990,
    race_concept_id = 0, ethnicity_concept_id = 0
  ) |>
    newCdmTable(newLocalSource(), "person"),
  "observation_period" = tibble(
    observation_period_id = 1, person_id = 1,
    observation_period_start_date = as.Date("2000-01-01"),
    observation_period_end_date = as.Date("2023-12-31"),
    period_type_concept_id = 0
  ) |>
    newCdmTable(newLocalSource(), "observation_period")
)
cdm <- newCdmReference(tables = cdmTables, cdmName = "mock")
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

cdm
#> 
#> ── # OMOP CDM reference (local) of mock ────────────────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: -
#> • achilles tables: -
#> • other tables: -
# }
```
