# 'codelist' object constructor

'codelist' object constructor

## Usage

``` r
newCodelistWithDetails(x, cdm = NULL)
```

## Arguments

- x:

  A named list where each element contains a tibble with the column
  concept_id

- cdm:

  A `<cdm_reference>` object. If provided, concept IDs in `x` will be
  checked against `cdm$concept`.

## Value

A codelist object.
