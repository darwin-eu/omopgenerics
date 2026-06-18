# Print a codelist with details

Print a codelist with details

## Usage

``` r
# S3 method for class 'codelist_with_details'
print(x, ...)
```

## Arguments

- x:

  A `<codelist_with_details>` object.

- ...:

  For compatibility; not used.

## Value

Invisibly returns the input

## Examples

``` r
codes <- list("disease X" = dplyr::tibble(
  concept_id = c(1, 2, 3),
  other = c("a", "b", "c")
))
codes <- newCodelistWithDetails(codes)
print(codes)
#> 
#> ── 1 codelist with details ─────────────────────────────────────────────────────
#> 
#> - disease X (3 codes)
```
