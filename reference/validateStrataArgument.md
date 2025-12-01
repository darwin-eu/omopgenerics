# To validate a strata list. It makes sure that elements are unique and point to columns in table.

To validate a strata list. It makes sure that elements are unique and
point to columns in table.

## Usage

``` r
validateStrataArgument(strata, table, call = parent.frame())
```

## Arguments

- strata:

  A list of characters that point to columns in table.

- table:

  A table with columns.

- call:

  Passed to cli functions.

## Value

The same strata input or an error if the input is incorrect.

## Examples

``` r
strata <- list("age", "sex", c("age", "sex"))
x <- dplyr::tibble(age = 30L, sex = "Female")

validateStrataArgument(strata, x)
#> [[1]]
#> [1] "age"
#> 
#> [[2]]
#> [1] "sex"
#> 
#> [[3]]
#> [1] "age" "sex"
#> 
```
