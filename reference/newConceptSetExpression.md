# 'concept_set_expression' object constructor

'concept_set_expression' object constructor

## Usage

``` r
newConceptSetExpression(x, cdm = NULL)
```

## Arguments

- x:

  a named list of tibbles, each of which containing concept set
  definitions

- cdm:

  A `<cdm_reference>` object. If provided, concept IDs in `x` will be
  checked against `cdm$concept`.

## Value

A concept_set_expression
