# Print a concept set expression

Print a concept set expression

## Usage

``` r
# S3 method for class 'conceptSetExpression'
print(x, ...)
```

## Arguments

- x:

  A concept set expression

- ...:

  Included for compatibility with generic. Not used.

## Value

Invisibly returns the input

## Examples

``` r
asthma_cs <- list(
  "asthma_narrow" = dplyr::tibble(
    "concept_id" = 1,
    "excluded" = FALSE,
    "descendants" = TRUE,
    "mapped" = FALSE
  ),
  "asthma_broad" = dplyr::tibble(
    "concept_id" = c(1, 2),
    "excluded" = FALSE,
    "descendants" = TRUE,
    "mapped" = FALSE
  )
)
asthma_cs <- newConceptSetExpression(asthma_cs)
print(asthma_cs)
#> 
#> ── 2 concept set expressions ───────────────────────────────────────────────────
#> 
#> - asthma_broad (2 concept criteria)
#> - asthma_narrow (1 concept criteria)
```
