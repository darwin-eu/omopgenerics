# Assert that an object is a table.

Assert that an object is a table.

## Usage

``` r
assertTable(
  x,
  class = NULL,
  numberColumns = NULL,
  numberRows = NULL,
  columns = character(),
  allowExtraColumns = TRUE,
  null = FALSE,
  unique = FALSE,
  call = parent.frame(),
  msg = NULL
)
```

## Arguments

- x:

  Variable to check.

- class:

  A class that the table must have: "tbl", "data.fram", "tbl_sql", ...

- numberColumns:

  Number of columns that it has to contain.

- numberRows:

  Number of rows that it has to contain.

- columns:

  Name of the columns required.

- allowExtraColumns:

  Whether extra columns are allowed.

- null:

  Whether it can be NULL.

- unique:

  Whether it has to contain unique rows.

- call:

  Call argument that will be passed to `cli` error message.

- msg:

  Custom error message.
