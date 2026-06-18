# Validate a window argument. It must be a list of two elements (window start and window end), both must be numeric, integerish by default, and window start must be lower or equal than window end.

Validate a window argument. It must be a list of two elements (window
start and window end), both must be numeric, integerish by default, and
window start must be lower or equal than window end.

## Usage

``` r
validateWindowArgument(
  window,
  snakeCase = TRUE,
  integerish = TRUE,
  empty = TRUE,
  nm = deparse1(substitute(window), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- window:

  time window

- snakeCase:

  return default window name in snake case if TRUE

- integerish:

  Whether window values must be integerish.

- empty:

  Whether it can be empty.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `window`.

- call:

  Call argument passed to `cli` functions.

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
