# Create an empty achilles table

Create an empty achilles table

## Usage

``` r
emptyAchillesTable(cdm, name)
```

## Arguments

- cdm:

  A cdm_reference to create the table.

- name:

  Name of the table to create.

## Value

The cdm_reference with an achilles empty table

## Examples

``` r
# \donttest{
library(omopgenerics)
cdm <- emptyCdmReference("my_example_cdm")
emptyAchillesTable(cdm = cdm, name = "achilles_results")
#> 
#> ── # OMOP CDM reference (local) of my_example_cdm ──────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: -
#> • achilles tables: achilles_results
#> • other tables: -
# }
```
