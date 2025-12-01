# Required columns that the result tables must have.

Required columns that the result tables must have.

## Usage

``` r
resultColumns(table = "summarised_result")
```

## Arguments

- table:

  Table to see required columns.

## Value

Required columns

## Examples

``` r
library(omopgenerics)

resultColumns()
#>  [1] "result_id"        "cdm_name"         "group_name"       "group_level"     
#>  [5] "strata_name"      "strata_level"     "variable_name"    "variable_level"  
#>  [9] "estimate_name"    "estimate_type"    "estimate_value"   "additional_name" 
#> [13] "additional_level"
```
