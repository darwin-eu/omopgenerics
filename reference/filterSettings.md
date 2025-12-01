# Filter a `<summarised_result>` using the settings

Filter a `<summarised_result>` using the settings

## Usage

``` r
filterSettings(result, ...)
```

## Arguments

- result:

  A `<summarised_result>` object.

- ...:

  Expressions that return a logical value (columns in settings are used
  to evaluate the expression), and are defined in terms of the variables
  in .data. If multiple expressions are included, they are combined with
  the & operator. Only rows for which all conditions evaluate to TRUE
  are kept.

## Value

A `<summarised_result>` object with only the result_id rows that fulfill
the required specified settings.

## Examples

``` r
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
#> `result_type`, `package_name`, and `package_version` added to settings.

x
#> # A tibble: 2 × 13
#>   result_id cdm_name group_name  group_level strata_name strata_level
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>       
#> 1         1 cprd     cohort_name my_cohort   sex         male        
#> 2         2 eunomia  cohort_name my_cohort   sex         male        
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>

x |> filterSettings(custom == "A")
#> # A tibble: 1 × 13
#>   result_id cdm_name group_name  group_level strata_name strata_level
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>       
#> 1         1 cprd     cohort_name my_cohort   sex         male        
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
