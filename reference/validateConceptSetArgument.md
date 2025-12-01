# Validate conceptSet argument. It can either be a list, a codelist, a concept set expression or a codelist with details. The output will always be a codelist.

Validate conceptSet argument. It can either be a list, a codelist, a
concept set expression or a codelist with details. The output will
always be a codelist.

## Usage

``` r
validateConceptSetArgument(
  conceptSet,
  cdm = NULL,
  validation = "error",
  call = parent.frame()
)
```

## Arguments

- conceptSet:

  It can be either a named list of concepts or a codelist,
  codelist_with_details or concept_set_expression object.

- cdm:

  A cdm_reference object, needed if a concept_set_expression is
  provided.

- validation:

  How to perform validation: "error", "warning".

- call:

  A call argument to pass to cli functions.

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
