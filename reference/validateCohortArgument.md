# Validate a cohort table input.

Validate a cohort table input.

## Usage

``` r
validateCohortArgument(
  cohort,
  checkEndAfterStart = FALSE,
  checkOverlappingEntries = FALSE,
  checkMissingValues = FALSE,
  checkInObservation = FALSE,
  checkAttributes = FALSE,
  checkPermanentTable = FALSE,
  dropExtraColumns = FALSE,
  validation = "error",
  call = parent.frame()
)
```

## Arguments

- cohort:

  Object to be validated as a valid cohort input.

- checkEndAfterStart:

  If TRUE a check that all cohort end dates come on or after cohort
  start date will be performed.

- checkOverlappingEntries:

  If TRUE a check that no individuals have overlapping cohort entries
  will be performed.

- checkMissingValues:

  If TRUE a check that there are no missing values in required fields
  will be performed.

- checkInObservation:

  If TRUE a check that cohort entries are within the individuals
  observation periods will be performed.

- checkAttributes:

  Whether to check if attributes are present and populated correctly.

- checkPermanentTable:

  Whether to check if the table has to be a permanent table.

- dropExtraColumns:

  Whether to drop extra columns that are not the required ones.

- validation:

  How to perform validation: "error", "warning".

- call:

  A call argument to pass to cli functions.

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
   cohortTables = list(
    cohort = dplyr::tibble(
      cohort_definition_id = 1L,
      subject_id = 1L,
      cohort_start_date = as.Date("2020-01-01"),
      cohort_end_date = as.Date("2021-02-10")
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

validateCohortArgument(cdm$cohort)
#> # A tibble: 1 × 4
#>   cohort_definition_id subject_id cohort_start_date cohort_end_date
#>                  <int>      <int> <date>            <date>         
#> 1                    1          1 2020-01-01        2021-02-10     
```
