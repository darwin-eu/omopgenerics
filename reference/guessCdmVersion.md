# Guess the OMOP CDM version

Guess the OMOP Common Data Model version from the `cdm_source` table. If
it cannot be obtained from there, the table and column names in the cdm
are compared with each supported version and the best match is returned.
If there is no unique best match, `NA_character_` is returned.

## Usage

``` r
guessCdmVersion(cdm)
```

## Arguments

- cdm:

  A cdm reference or a named list of cdm tables.

## Value

A character vector indicating the guessed cdm version, or
`NA_character_` if it cannot be guessed.

## Examples

``` r
cdm <- list(
  cdm_source = dplyr::tibble(cdm_version = "v5.4.1")
)

guessCdmVersion(cdm)
#> [1] "5.4"
```
