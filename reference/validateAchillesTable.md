# Validate if a cdm_table is a valid achilles table.

Validate if a cdm_table is a valid achilles table.

## Usage

``` r
validateAchillesTable(
  table,
  version = NULL,
  cast = FALSE,
  call = parent.frame()
)
```

## Arguments

- table:

  A cdm_table to validate.

- version:

  The cdm vocabulary version.

- cast:

  Whether to cast columns to required type.

- call:

  Passed to cli call.

## Value

invisible achilles table
