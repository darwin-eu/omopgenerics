# Validate if two columns are valid Name-Level pair.

Validate if two columns are valid Name-Level pair.

## Usage

``` r
validateNameLevel(
  x,
  prefix,
  sep = " &&& ",
  validation = "error",
  call = parent.frame()
)
```

## Arguments

- x:

  A tibble.

- prefix:

  Prefix for the name-level pair, e.g. 'strata' for
  strata_name-strata_level pair.

- sep:

  Separation pattern.

- validation:

  Either 'error', 'warning' or 'message'.

- call:

  Will be used by cli to report errors.
