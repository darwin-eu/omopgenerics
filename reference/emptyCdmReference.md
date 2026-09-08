# Create an empty cdm_reference

Create an empty cdm_reference

## Usage

``` r
emptyCdmReference(cdmName, cdmVersion = NULL)
```

## Arguments

- cdmName:

  Name of the `<cdm_reference>` object.

- cdmVersion:

  Version of the OMOP Common Data Model. Supported options are: "5.3",
  "5.4", or "5.5".

## Value

An empty cdm_reference

## Examples

``` r
# \donttest{
library(omopgenerics)
emptyCdmReference(cdmName = "my_example_cdm")
#> 
#> ── # OMOP CDM reference (local) of my_example_cdm ──────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: -
#> • achilles tables: -
#> • other tables: -
# }
```
