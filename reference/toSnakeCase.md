# Convert a character vector to snake case

Convert a character vector to snake case

## Usage

``` r
toSnakeCase(x)
```

## Arguments

- x:

  Character vector to convert

## Value

A snake_case vector

## Examples

``` r
toSnakeCase("myVariable")
#> [1] "my_variable"

toSnakeCase(c("cohort1", "Cohort22b"))
#> [1] "cohort1"   "cohort22b"
```
