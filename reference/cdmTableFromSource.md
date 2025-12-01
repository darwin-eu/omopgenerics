# This is an internal developer focused function that creates a cdm_table from a table that shares the source but it is not a cdm_table. Please use insertTable if you want to insert a table to a cdm_reference object.

This is an internal developer focused function that creates a cdm_table
from a table that shares the source but it is not a cdm_table. Please
use insertTable if you want to insert a table to a cdm_reference object.

## Usage

``` r
cdmTableFromSource(src, value)
```

## Arguments

- src:

  A cdm_source object.

- value:

  A table that shares source with the cdm_reference object.

## Value

A cdm_table.
