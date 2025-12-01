# Provide all combinations of strata levels.

Provide all combinations of strata levels.

## Usage

``` r
combineStrata(levels, overall = FALSE)
```

## Arguments

- levels:

  Vector of all strata levels to combine.

- overall:

  Whether to provide an empty element
  [`character()`](https://rdrr.io/r/base/character.html).

## Value

A vector of all combinations of strata.

## Examples

``` r
combineStrata(character())
#> list()
combineStrata(character(), overall = TRUE)
#> [[1]]
#> character(0)
#> 
combineStrata(c("age", "sex"), overall = TRUE)
#> [[1]]
#> character(0)
#> 
#> [[2]]
#> [1] "age"
#> 
#> [[3]]
#> [1] "sex"
#> 
#> [[4]]
#> [1] "age" "sex"
#> 
combineStrata(c("age", "sex", "year"))
#> [[1]]
#> [1] "age"
#> 
#> [[2]]
#> [1] "sex"
#> 
#> [[3]]
#> [1] "year"
#> 
#> [[4]]
#> [1] "age" "sex"
#> 
#> [[5]]
#> [1] "age"  "year"
#> 
#> [[6]]
#> [1] "sex"  "year"
#> 
#> [[7]]
#> [1] "age"  "sex"  "year"
#> 
```
