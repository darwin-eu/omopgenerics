# Print a codelist

Print a codelist

## Usage

``` r
# S3 method for class 'codelist'
print(x, ...)
```

## Arguments

- x:

  A codelist

- ...:

  Included for compatibility with generic. Not used.

## Value

Invisibly returns the input

## Examples

``` r
codes <- list("disease X" = c(1, 2, 3), "disease Y" = c(4, 5))
codes <- newCodelist(codes)
#> Warning: ! `codelist` casted to integers.
print(codes)
#> 
#> ── 2 codelists ─────────────────────────────────────────────────────────────────
#> 
#> - disease X (3 codes)
#> - disease Y (2 codes)
```
