# Identify settings columns of a `<summarised_result>`

Identifies and returns the columns of the settings table obtained by
using
[`settings()`](https://darwin-eu.github.io/omopgenerics/reference/settings.md)
in a `<summarised_result>` object.

## Usage

``` r
settingsColumns(result, metadata = FALSE)
```

## Arguments

- result:

  A `<summarised_result>`.

- metadata:

  Whether to include metadata columns in settings or not.

## Value

Vector with names of the settings columns

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

  x |> settingsColumns()
}
#> `result_type`, `package_name`, and `package_version` added to settings.
#> [1] "custom"
```
