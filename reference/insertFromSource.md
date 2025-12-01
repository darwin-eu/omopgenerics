# Convert a table that is not a cdm_table but have the same original source to a cdm_table. This Table is not meant to be used to insert tables in the cdm, please use insertTable instead.

**\[deprecated\]**

## Usage

``` r
insertFromSource(cdm, value)
```

## Arguments

- cdm:

  A cdm_reference object.

- value:

  A table that shares source with the cdm_reference object.

## Value

A table in the cdm_reference environment
