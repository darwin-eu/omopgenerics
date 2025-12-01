# Required columns for each of the achilles result tables

Required columns for each of the achilles result tables

## Usage

``` r
achillesColumns(table, version = "5.3", onlyRequired = lifecycle::deprecated())
```

## Arguments

- table:

  Table for which to see the required columns. One of
  "achilles_analysis", "achilles_results", or "achilles_results_dist".

- version:

  Version of the OMOP Common Data Model.

- onlyRequired:

  deprecated.

## Value

Character vector with the column names

## Examples

``` r
# \donttest{
library(omopgenerics)
achillesColumns("achilles_analysis")
#> [1] "analysis_id"    "analysis_name"  "stratum_1_name" "stratum_2_name"
#> [5] "stratum_3_name" "stratum_4_name" "stratum_5_name" "is_default"    
#> [9] "category"      
achillesColumns("achilles_results")
#> [1] "analysis_id" "stratum_1"   "stratum_2"   "stratum_3"   "stratum_4"  
#> [6] "stratum_5"   "count_value"
achillesColumns("achilles_results_dist")
#>  [1] "analysis_id"  "stratum_1"    "stratum_2"    "stratum_3"    "stratum_4"   
#>  [6] "stratum_5"    "count_value"  "min_value"    "max_value"    "avg_value"   
#> [11] "stdev_value"  "median_value" "p10_value"    "p25_value"    "p75_value"   
#> [16] "p90_value"   
# }
```
