# Function to suppress counts in result objects

Function to suppress counts in result objects

## Usage

``` r
# S3 method for class 'summarised_result'
suppress(result, minCellCount = 5)
```

## Arguments

- result:

  summarised_result object.

- minCellCount:

  Minimum count of records to report results.

## Value

summarised_result with suppressed counts.

## Examples

``` r
library(dplyr, warn.conflicts = FALSE)
library(omopgenerics)

my_result <- tibble(
  "result_id" = "1",
  "cdm_name" = "mock",
  "result_type" = "summarised_characteristics",
  "package_name" = "omopgenerics",
  "package_version" = as.character(utils::packageVersion("omopgenerics")),
  "group_name" = "overall",
  "group_level" = "overall",
  "strata_name" = c(rep("overall", 6), rep("sex", 3)),
  "strata_level" = c(rep("overall", 6), "male", "female", "female"),
  "variable_name" = c(
    "number records", "age_group", "age_group",
    "age_group", "age_group", "my_variable", "number records", "age_group",
    "age_group"
  ),
  "variable_level" = c(
    NA, "<50", "<50", ">=50", ">=50", NA, NA,
    "<50", "<50"
  ),
  "estimate_name" = c(
    "count", "count", "percentage", "count", "percentage",
    "random", "count", "count", "percentage"
  ),
  "estimate_type" = c(
    "integer", "integer", "percentage", "integer",
    "percentage", "numeric", "integer", "integer", "percentage"
  ),
  "estimate_value" = c("10", "5", "50", "3", "30", "1", "3", "12", "6"),
  "additional_name" = "overall",
  "additional_level" = "overall"
)
my_result <- newSummarisedResult(my_result)
#> ! `result_type`, `package_name`, and `package_version` moved to settings. This
#>   is not recommended as settings should be explicitly provided.
#> ℹ NOTE that this can cause problems with settings.
my_result |> glimpse()
#> Rows: 9
#> Columns: 13
#> $ result_id        <int> 1, 1, 1, 1, 1, 1, 1, 1, 1
#> $ cdm_name         <chr> "mock", "mock", "mock", "mock", "mock", "mock", "mock…
#> $ group_name       <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ group_level      <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ strata_name      <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ strata_level     <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ variable_name    <chr> "number records", "age_group", "age_group", "age_grou…
#> $ variable_level   <chr> NA, "<50", "<50", ">=50", ">=50", NA, NA, "<50", "<50"
#> $ estimate_name    <chr> "count", "count", "percentage", "count", "percentage"…
#> $ estimate_type    <chr> "integer", "integer", "percentage", "integer", "perce…
#> $ estimate_value   <chr> "10", "5", "50", "3", "30", "1", "3", "12", "6"
#> $ additional_name  <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ additional_level <chr> "overall", "overall", "overall", "overall", "overall"…
my_result <- suppress(my_result, minCellCount = 5)
my_result |> glimpse()
#> Rows: 9
#> Columns: 13
#> $ result_id        <int> 1, 1, 1, 1, 1, 1, 1, 1, 1
#> $ cdm_name         <chr> "mock", "mock", "mock", "mock", "mock", "mock", "mock…
#> $ group_name       <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ group_level      <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ strata_name      <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ strata_level     <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ variable_name    <chr> "number records", "age_group", "age_group", "age_grou…
#> $ variable_level   <chr> NA, "<50", "<50", ">=50", ">=50", NA, NA, "<50", "<50"
#> $ estimate_name    <chr> "count", "count", "percentage", "count", "percentage"…
#> $ estimate_type    <chr> "integer", "integer", "percentage", "integer", "perce…
#> $ estimate_value   <chr> "10", "5", "50", "-", "-", "1", "-", "12", "6"
#> $ additional_name  <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ additional_level <chr> "overall", "overall", "overall", "overall", "overall"…
```
