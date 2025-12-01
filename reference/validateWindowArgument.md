# Validate a window argument. It must be a list of two elements (window start and window end), both must be integerish and window start must be lower or equal than window end.

Validate a window argument. It must be a list of two elements (window
start and window end), both must be integerish and window start must be
lower or equal than window end.

## Usage

``` r
validateWindowArgument(window, snakeCase = TRUE, call = parent.frame())
```

## Arguments

- window:

  time window

- snakeCase:

  return default window name in snake case if TRUE

- call:

  A call argument to pass to cli functions.

## Value

time window

## Examples

``` r
validateWindowArgument(list(c(0, 15), c(-Inf, Inf)))
#> $`0_to_15`
#> [1]  0 15
#> 
#> $minf_to_inf
#> [1] -Inf  Inf
#> 
validateWindowArgument(list(c(0, 15), c(-Inf, Inf)), snakeCase = FALSE)
#> $`0 to 15`
#> [1]  0 15
#> 
#> $`-inf to inf`
#> [1] -Inf  Inf
#> 
```
