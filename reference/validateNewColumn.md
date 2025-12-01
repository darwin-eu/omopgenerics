# Validate a new column of a table

Validate a new column of a table

## Usage

``` r
validateNewColumn(table, column, validation = "warning", call = parent.frame())
```

## Arguments

- table:

  The table to check if the column already exists.

- column:

  Character vector with the name(s) of the new column(s).

- validation:

  Whether to throw warning or error.

- call:

  Passed to cli functions.

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
