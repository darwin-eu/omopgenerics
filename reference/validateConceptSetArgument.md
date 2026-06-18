# Validate conceptSet argument. It can either be a list, a codelist, a concept set expression or a codelist with details. The output will always be a codelist.

Validate conceptSet argument. It can either be a list, a codelist, a
concept set expression or a codelist with details. The output will
always be a codelist.

## Usage

``` r
validateConceptSetArgument(
  conceptSet,
  cdm = NULL,
  empty = TRUE,
  validation = "error",
  nm = deparse1(substitute(conceptSet), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- conceptSet:

  It can be either a named list of concepts or a codelist,
  codelist_with_details or concept_set_expression object.

- cdm:

  A `<cdm_reference>` object. If provided, concept IDs in the resulting
  codelist will be checked against `cdm$concept`. It is also needed if a
  concept_set_expression with descendants is provided.

- empty:

  Whether it can be empty.

- validation:

  How to perform validation: "error", "warning".

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `conceptSet`.

- call:

  Call argument passed to `cli` functions.

## Value

A codelist object.

## Examples

``` r
conceptSet <- list(disease_x = c(1L, 2L))
validateConceptSetArgument(conceptSet)
#> 
#> ── 1 codelist ──────────────────────────────────────────────────────────────────
#> 
#> - disease_x (2 codes)
```
