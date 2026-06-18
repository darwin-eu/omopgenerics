# Validate if a table is a valid cdm_table object.

Validate if a table is a valid cdm_table object.

## Usage

``` r
validateCdmTable(
  table,
  name = NULL,
  empty = TRUE,
  nm = deparse1(substitute(table), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- table:

  Object to validate.

- name:

  If we want to validate that the table has a specific name.

- empty:

  Whether it can be empty.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `table`.

- call:

  Call argument passed to `cli` functions.

## Value

The table or an error message.
