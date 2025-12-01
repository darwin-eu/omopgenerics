# Choices that can be present in `estimate_type` column.

Choices that can be present in `estimate_type` column.

## Usage

``` r
estimateTypeChoices()
```

## Value

A character vector with the options that can be present in
`estimate_type` column in the summarised_result objects.

## Examples

``` r
library(omopgenerics)

estimateTypeChoices()
#> [1] "numeric"    "integer"    "date"       "character"  "proportion"
#> [6] "percentage" "logical"   
```
