# Add settings columns to a `<summarised_result>` object

Add settings columns to a `<summarised_result>` object

## Usage

``` r
addSettings(result, settingsColumn = settingsColumns(result))
```

## Arguments

- result:

  A `<summarised_result>` object.

- settingsColumn:

  Settings to be added as columns, by default `settingsColumns(result)`
  will be added. If NULL or empty character vector, no settings will be
  added.

## Value

A `<summarised_result>` object with the added setting columns.

## Examples

``` r
{
  library(dplyr)
  library(omopgenerics)

  x <- tibble(
    "result_id" = as.integer(c(1, 2)),
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
    newSummarisedResult(settings = tibble(
      "result_id" = c(1, 2), "custom" = c("A", "B")
    ))

  x

  x |> addSettings()
}
#> 
#> Attaching package: ‘dplyr’
#> The following objects are masked from ‘package:stats’:
#> 
#>     filter, lag
#> The following objects are masked from ‘package:base’:
#> 
#>     intersect, setdiff, setequal, union
#> `result_type`, `package_name`, and `package_version` added to settings.
#> # A tibble: 2 × 14
#>   result_id cdm_name group_name  group_level strata_name strata_level
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>       
#> 1         1 cprd     cohort_name my_cohort   sex         male        
#> 2         2 eunomia  cohort_name my_cohort   sex         male        
#> # ℹ 8 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>, custom <chr>
```
