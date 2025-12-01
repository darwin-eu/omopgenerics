# `cohort_table` objects constructor.

`cohort_table` objects constructor.

## Usage

``` r
newCohortTable(
  table,
  cohortSetRef = attr(table, "cohort_set"),
  cohortAttritionRef = attr(table, "cohort_attrition"),
  cohortCodelistRef = attr(table, "cohort_codelist"),
  .softValidation = FALSE
)
```

## Arguments

- table:

  cdm_table object with at least: cohort_definition_id, subject_id,
  cohort_start_date, cohort_end_date.

- cohortSetRef:

  Table with at least: cohort_definition_id, cohort_name

- cohortAttritionRef:

  Table with at least: cohort_definition_id, number_subjects,
  number_records, reason_id, reason, excluded_subjects,
  excluded_records.

- cohortCodelistRef:

  Table with at least: cohort_definition_id, codelist_name, concept_id
  and codelist_type.

- .softValidation:

  Whether to perform a soft validation of consistency. If set to FALSE
  four additional checks will be performed: 1) a check that cohort end
  date is not before cohort start date, 2) a check that there are no
  missing values in required columns, 3) a check that cohort duration is
  all within observation period, and 4) that there are no overlapping
  cohort entries

## Value

A cohort_table object

## Examples

``` r
person <- dplyr::tibble(
  person_id = 1, gender_concept_id = 0, year_of_birth = 1990,
  race_concept_id = 0, ethnicity_concept_id = 0
)
observation_period <- dplyr::tibble(
  observation_period_id = 1, person_id = 1,
  observation_period_start_date = as.Date("2000-01-01"),
  observation_period_end_date = as.Date("2023-12-31"),
  period_type_concept_id = 0
)
cohort1 <- dplyr::tibble(
  cohort_definition_id = 1, subject_id = 1,
  cohort_start_date = as.Date("2020-01-01"),
  cohort_end_date = as.Date("2020-01-10")
)
cdm <- cdmFromTables(
  tables = list(
    "person" = person,
    "observation_period" = observation_period,
    "cohort1" = cohort1
  ),
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
cdm
#> 
#> ── # OMOP CDM reference (local) of test ────────────────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: -
#> • achilles tables: -
#> • other tables: cohort1
cdm$cohort1 <- newCohortTable(table = cdm$cohort1)
#> Warning: ! 2 casted column in cohort1 as do not match expected column type:
#> • `cohort_definition_id` from numeric to integer
#> • `subject_id` from numeric to integer
cdm
#> 
#> ── # OMOP CDM reference (local) of test ────────────────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: cohort1
#> • achilles tables: -
#> • other tables: -
settings(cdm$cohort1)
#> # A tibble: 1 × 2
#>   cohort_definition_id cohort_name
#>                  <int> <chr>      
#> 1                    1 cohort_1   
attrition(cdm$cohort1)
#> # A tibble: 1 × 7
#>   cohort_definition_id number_records number_subjects reason_id reason          
#>                  <int>          <int>           <int>     <int> <chr>           
#> 1                    1              1               1         1 Initial qualify…
#> # ℹ 2 more variables: excluded_records <int>, excluded_subjects <int>
cohortCount(cdm$cohort1)
#> # A tibble: 1 × 3
#>   cohort_definition_id number_records number_subjects
#>                  <int>          <int>           <int>
#> 1                    1              1               1
```
