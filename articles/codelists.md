# Concept sets

``` r
library(omopgenerics)
```

## Codelist

A concept set can be represented as either a codelist or a concept set
expression. A codelist is a named list, with each item of the list
containing specific concept IDs.

``` r
condition_codes <- list(
  "diabetes" = c(201820, 4087682, 3655269),
  "asthma" = 317009
)
condition_codes <- newCodelist(condition_codes)
#> Warning: ! `codelist` casted to integers.

condition_codes
#> 
#> - asthma (1 codes)
#> - diabetes (3 codes)
```

A codelist must be named

``` r
condition_codes <- list(c(201820, 4087682, 3655269))
newCodelist(condition_codes)
#> Error in `newCodelist()`:
#> ✖ `codelist` must be named.
#> ! `codelist` must be a list with objects of class numeric, integer, and
#>   integer64; it can not contain NA; it has to be named; it can not be NULL.
```

And a codelist cannot have missing values

``` r
condition_codes <- list(
  "diabetes" = c(201820, NA, 3655269),
  "asthma" = 317009
)
newCodelist(condition_codes)
#> Warning: ! `codelist` casted to integers.
#> Error in `validateCodelist()`:
#> ✖ 1 codelist contain NA: `diabetes`.
```

## Concept set expression

A concept set expression provides a high-level definition of concepts
that, when applied to a specific OMOP CDM vocabulary version (by making
use of the concept hierarchies and relationships), will result in a
codelist.

``` r
condition_cs <- list(
  "diabetes" = dplyr::tibble(
    "concept_id" = c(201820, 4087682),
    "excluded" = c(FALSE, FALSE),
    "descendants" = c(TRUE, FALSE),
    "mapped" = c(FALSE, FALSE)
  ),
  "asthma" = dplyr::tibble(
    "concept_id" = 317009,
    "excluded" = FALSE,
    "descendants" = FALSE,
    "mapped" = FALSE
  )
)
condition_cs <- newConceptSetExpression(condition_cs)

condition_cs
#> 
#> - asthma (1 concept criteria)
#> - diabetes (2 concept criteria)
```

As with a codelist, a concept set expression must be a named list and
cannot have missing elements.

``` r
condition_cs <- list(
  dplyr::tibble(
    "concept_id" = c(201820, NA),
    "excluded" = c(FALSE, FALSE),
    "descendants" = c(TRUE, FALSE),
    "mapped" = c(FALSE, FALSE)
  )
)
newConceptSetExpression(condition_cs)
#> Error in `newConceptSetExpression()`:
#> ✖ `x` must be named.
#> ! `x` must be a list with objects of class tbl; it can not contain NA; it has
#>   to be named; it can not be NULL.
```

``` r
condition_cs <- list(
  "diabetes" = dplyr::tibble(
    "concept_id" = c(201820, NA),
    "excluded" = c(FALSE, FALSE),
    "descendants" = c(TRUE, FALSE),
    "mapped" = c(FALSE, FALSE)
  ),
  "asthma" = dplyr::tibble(
    "concept_id" = 317009,
    "excluded" = FALSE,
    "descendants" = FALSE,
    "mapped" = FALSE
  )
)
newConceptSetExpression(condition_cs)
#> Error in `newConceptSetExpression()`:
#> ✖ `x[[i]]$concept_id` contains NA in position 2.
#> ! `x[[i]]$concept_id` must be an integerish numeric; it can not contain NA; it
#>   can not be NULL.
```
