# 'codelist' object constructor

'codelist' object constructor

## Usage

``` r
newCodelist(x, cdm = NULL)
```

## Arguments

- x:

  A named list where each element contains a vector of concept IDs.

- cdm:

  A `<cdm_reference>` object. If provided, concept IDs in `x` will be
  checked against `cdm$concept`.

## Value

A codelist object.
