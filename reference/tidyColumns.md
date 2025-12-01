# Identify tidy columns of a `<summarised_result>`

Identifies and returns the columns that the tidy version of the
`<summarised_result>` will have.

## Usage

``` r
tidyColumns(result)
```

## Arguments

- result:

  A `<summarised_result>`.

## Value

Table columns after applying
[`tidy()`](https://generics.r-lib.org/reference/tidy.html) function to a
`<summarised_result>`.

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

  x |> tidyColumns()
}
#> `result_type`, `package_name`, and `package_version` added to settings.
#> [1] "cdm_name"       "cohort_name"    "sex"            "variable_name" 
#> [5] "variable_level" "count"          "custom"        
```
