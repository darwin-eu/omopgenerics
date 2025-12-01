# Restrict the cdm object to a subset of tables.

Restrict the cdm object to a subset of tables.

## Usage

``` r
cdmSelect(cdm, ...)
```

## Arguments

- cdm:

  A cdm_reference object.

- ...:

  Selection of tables to use, it supports tidyselect expressions.

## Value

A cdm_reference with only the specified tables.

## Examples

``` r
cdm <- emptyCdmReference("my cdm")
cdm
#> 
#> ── # OMOP CDM reference (local) of my cdm ──────────────────────────────────────
#> • omop tables: observation_period, person
#> • cohort tables: -
#> • achilles tables: -
#> • other tables: -

cdm |>
  cdmSelect("person")
#> 
#> ── # OMOP CDM reference (local) of my cdm ──────────────────────────────────────
#> • omop tables: person
#> • cohort tables: -
#> • achilles tables: -
#> • other tables: -
```
