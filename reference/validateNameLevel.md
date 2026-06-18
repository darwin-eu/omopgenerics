# Validate if two columns are valid Name-Level pair.

Validate if two columns are valid Name-Level pair.

## Usage

``` r
validateNameLevel(
  x,
  prefix,
  validation = "error",
  empty = TRUE,
  nm = deparse1(substitute(x), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- x:

  A tibble.

- prefix:

  Prefix for the name-level pair, e.g. 'strata' for
  strata_name-strata_level pair.

- validation:

  Either 'error', 'warning' or 'message'.

- empty:

  Whether it can be empty.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `x`.

- call:

  Will be used by cli to report errors.
