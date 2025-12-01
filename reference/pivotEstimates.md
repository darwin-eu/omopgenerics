# Set estimates as columns

Pivot the estimates as new columns in result table.

## Usage

``` r
pivotEstimates(result, pivotEstimatesBy = "estimate_name", nameStyle = NULL)
```

## Arguments

- result:

  A `<summarised_result>`.

- pivotEstimatesBy:

  Names from which pivot wider the estimate values. If NULL the table
  will not be pivotted.

- nameStyle:

  Name style (glue package specifications) to customise names when
  pivotting estimates. If NULL standard tidyr::pivot_wider formatting
  will be used.

## Value

A tibble.

## Examples

``` r
{
  library(dplyr)
  library(omopgenerics)

  x <- tibble(
    "result_id" = 1L,
    "cdm_name" = c("cprd", "eunomia"),
    "group_name" = "cohort_name",
    "group_level" = "my_cohort",
    "strata_name" = "sex",
    "strata_level" = "male",
    "variable_name" = "Age group",
    "variable_level" = "10 to 50",
    "estimate_name" = "count",
    "estimate_type" = "numeric",
    "estimate_value" = "5",
    "additional_name" = "overall",
    "additional_level" = "overall"
  ) |>
    newSummarisedResult()

  x |>
    pivotEstimates()
}
#> `result_type`, `package_name`, and `package_version` added to settings.
#> # A tibble: 2 × 11
#>   result_id cdm_name group_name  group_level strata_name strata_level
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>       
#> 1         1 cprd     cohort_name my_cohort   sex         male        
#> 2         1 eunomia  cohort_name my_cohort   sex         male        
#> # ℹ 5 more variables: variable_name <chr>, variable_level <chr>,
#> #   additional_name <chr>, additional_level <chr>, count <dbl>
```
