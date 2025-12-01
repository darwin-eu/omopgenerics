# Required columns for a generated cohort set.

Required columns for a generated cohort set.

## Usage

``` r
cohortColumns(table, version = "5.3")
```

## Arguments

- table:

  Either `cohort`, `cohort_set` or `cohort_attrition`

- version:

  Version of the OMOP Common Data Model.

## Value

Character vector with the column names

Required columns

## Examples

``` r
# \donttest{
library(omopgenerics)
cohortColumns("cohort")
#> [1] "cohort_definition_id" "subject_id"           "cohort_start_date"   
#> [4] "cohort_end_date"     
# }
```
