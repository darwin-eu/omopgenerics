# Validate cohortId argument. CohortId can either be a cohort_definition_id value, a cohort_name or a tidyselect expression referinc to cohort_names. If you want to support tidyselect expressions please use the function as: `validateCohortIdArgument({{cohortId}}, cohort)`.

Validate cohortId argument. CohortId can either be a
cohort_definition_id value, a cohort_name or a tidyselect expression
referinc to cohort_names. If you want to support tidyselect expressions
please use the function as:
`validateCohortIdArgument({{cohortId}}, cohort)`.

## Usage

``` r
validateCohortIdArgument(
  cohortId,
  cohort,
  null = TRUE,
  validation = "error",
  call = parent.frame()
)
```

## Arguments

- cohortId:

  A cohortId vector to be validated.

- cohort:

  A cohort_table object.

- null:

  Whether `NULL` is accepted. If NULL all `cohortId` will be returned.

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

validateCohortIdArgument(NULL, cdm$cohort)
#> [1] 1
validateCohortIdArgument(1L, cdm$cohort)
#> [1] 1
validateCohortIdArgument(2L, cdm$cohort, validation = "warning")
#> Warning: ! cohort definition id: 2 not defined in settings.
#> Warning: ! cohortId is empty.
#> integer(0)
```
