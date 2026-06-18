# Validate if a cdm_table is a valid achilles table.

Validate if a cdm_table is a valid achilles table.

## Usage

``` r
validateAchillesTable(
  table,
  version = NULL,
  cast = FALSE,
  empty = TRUE,
  nm = deparse1(substitute(table), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- table:

  A cdm_table to validate.

- version:

  Version of the OMOP Common Data Model.

- cast:

  Whether to cast columns to the correct type.

- empty:

  Whether it can be empty.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `table`.

- call:

  Call argument passed to `cli` functions.

## Value

invisible achilles table
