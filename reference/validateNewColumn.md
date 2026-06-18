# Validate a new column of a table

Validate a new column of a table

## Usage

``` r
validateNewColumn(
  table,
  column,
  empty = TRUE,
  validation = "warning",
  nm = deparse1(substitute(column), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- table:

  The table to check if the column already exists.

- column:

  Character vector with the name(s) of the new column(s).

- empty:

  Whether it can be empty.

- validation:

  How to perform validation: "error", "warning".

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `column`.

- call:

  Call argument passed to `cli` functions.

## Value

table without conflicting columns.

## Examples

``` r
x <- dplyr::tibble(
  column1 = c(1L, 2L),
  column2 = c("a", "b")
)
validateNewColumn(x, "not_exiting_column")
#> # A tibble: 2 × 2
#>   column1 column2
#>     <int> <chr>  
#> 1       1 a      
#> 2       2 b      
validateNewColumn(x, "column1")
#> Warning: ! columns `column1` already exist in the table. They will be overwritten.
#> # A tibble: 2 × 1
#>   column2
#>   <chr>  
#> 1 a      
#> 2 b      
```
