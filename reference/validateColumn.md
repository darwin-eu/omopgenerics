# Validate whether a variable points to a certain exiting column in a table.

Validate whether a variable points to a certain exiting column in a
table.

## Usage

``` r
validateColumn(
  column,
  x,
  type = c("character", "date", "logical", "numeric", "integer"),
  validation = "error",
  call = parent.frame()
)
```

## Arguments

- column:

  Name of a column that you want to check that exist in `x` table.

- x:

  Table to check if the column exist.

- type:

  Type of the column.

- validation:

  Whether to throw warning or error.

- call:

  Passed to cli functions.

## Value

the validated name

## Examples

``` r
x <- dplyr::tibble(a = 1, b = "xxx")

validateColumn("a", x, validation = "warning")
#> [1] "a"
validateColumn("a", x, type = "character", validation = "warning")
#> Warning: ! a type must be a choice of: `character`; but it is numeric.
#> [1] "a"
validateColumn("a", x, type = "numeric", validation = "warning")
#> [1] "a"
validateColumn("not_existing", x, type = "numeric", validation = "warning")
#> Warning: ! not_existing column does not exist.
#> [1] "not_existing"
```
