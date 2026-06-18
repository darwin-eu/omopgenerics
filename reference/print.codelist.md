# Print a codelist

Print a codelist

## Usage

``` r
# S3 method for class 'codelist'
print(x, ...)
```

## Arguments

- x:

  A `<codelist>` object.

- ...:

  For compatibility; not used.

## Value

Invisibly returns the input

## Examples

``` r
codes <- list("disease X" = c(1, 2, 3), "disease Y" = c(4, 5))
codes <- newCodelist(codes)
#> Warning: ! `codelist` cast to integers.
print(codes)
#> 
#> ── 2 codelists ─────────────────────────────────────────────────────────────────
#> 
#> - disease X (3 codes)
#> - disease Y (2 codes)
```
