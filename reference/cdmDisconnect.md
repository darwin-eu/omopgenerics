# Disconnect from a cdm object.

Disconnect from a cdm object.

## Usage

``` r
cdmDisconnect(cdm, ...)
```

## Arguments

- cdm:

  A cdm reference or the source of a cdm reference.

- ...:

  Used for consistency.

## Value

TRUE if process wass successful. library(omopgenerics) library(dplyr,
warn.conflicts = FALSE)

person \<- tibble( person_id = 1, gender_concept_id = 0, year_of_birth =
1990, race_concept_id = 0, ethnicity_concept_id = 0 ) observation_period
\<- tibble( observation_period_id = 1, person_id = 1,
observation_period_start_date = as.Date("2000-01-01"),
observation_period_end_date = as.Date("2023-12-31"),
period_type_concept_id = 0 ) cdm \<- cdmFromTables( tables =
list("person" = person, "observation_period" = observation_period),
cdmName = "mock" )

cdmDisconnect(cdm)
