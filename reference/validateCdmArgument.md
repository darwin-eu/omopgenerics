# Validate if an object in a valid cdm_reference.

Validate if an object in a valid cdm_reference.

## Usage

``` r
validateCdmArgument(
  cdm,
  checkOverlapObservation = FALSE,
  checkStartBeforeEndObservation = FALSE,
  checkPlausibleObservationDates = FALSE,
  checkPerson = FALSE,
  requiredTables = character(),
  empty = TRUE,
  validation = "error",
  nm = deparse1(substitute(cdm), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- cdm:

  A `<cdm_reference>` object.

- checkOverlapObservation:

  TRUE to perform check on no overlap observation period

- checkStartBeforeEndObservation:

  TRUE to perform check on correct observational start and end date

- checkPlausibleObservationDates:

  TRUE to perform check that there are no implausible observation period
  start dates (before 1800-01-01) or end dates (after the current date)

- checkPerson:

  TRUE to perform check on person id in all clinical table are in person
  table

- requiredTables:

  Name of tables that are required to be part of the cdm_reference
  object.

- empty:

  Whether it can be empty.

- validation:

  How to perform validation: "error", "warning".

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `cdm`.

- call:

  Call argument passed to `cli` functions.

## Value

A cdm_reference object

## Examples

``` r
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
#> Warning: ! 5 cast column in person as do not match the expected column type:
#> • `person_id` from numeric to integer
#> • `gender_concept_id` from numeric to integer
#> • `year_of_birth` from numeric to integer
#> • `race_concept_id` from numeric to integer
#> • `ethnicity_concept_id` from numeric to integer
#> Warning: ! 1 cast column in observation_period as do not match the expected column type:
#> • `period_type_concept_id` from numeric to integer

validateCdmArgument(cdm)
#> 
#> ── # OMOP CDM reference (local) of mock ────────────────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: -
#> • achilles tables: -
#> • other tables: -
```
