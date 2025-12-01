# Validate an omop_table

Validate an omop_table

## Usage

``` r
validateOmopTable(
  omopTable,
  version = NULL,
  cast = FALSE,
  call = parent.frame()
)
```

## Arguments

- omopTable:

  An omop_table to check.

- version:

  The version of the cdm.

- cast:

  Whether to cast columns to the correct type.

- call:

  Call argument that will be passed to `cli` error message.

## Value

An omop_table object.
