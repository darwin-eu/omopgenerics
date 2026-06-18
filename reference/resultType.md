# Get the `result_type(s)` defined in a certain package

Get the `result_type(s)` defined in a certain package

## Usage

``` r
resultType(pkg = NULL)
```

## Arguments

- pkg:

  A character vector of the packages of interest

## Value

A named (package) list of the result_type registered in each package.

## Examples

``` r
library(omopgenerics)

resultType()
#> $omopgenerics
#> [1] "cdm_snapshot"       "cohort_count"       "cohort_attrition"  
#> [4] "summarise_log_file" "summarise_log_sql" 
#> 
```
