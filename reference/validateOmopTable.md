# Validate an omop_table

Validate an omop_table

## Usage

``` r
validateOmopTable(
  omopTable,
  version = NULL,
  cast = FALSE,
  empty = TRUE,
  nm = deparse1(substitute(omopTable), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- omopTable:

  An omop_table to check.

- version:

  Version of the OMOP Common Data Model. Supported options are: "5.3",
  "5.4", or "5.5".

- cast:

  Whether to cast columns to the correct type.

- empty:

  Whether it can be empty.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `omopTable`.

- call:

  Call argument passed to `cli` functions.

## Value

An omop_table object.
