# Filter the additional_name-additional_level pair in a summarised_result

Filter the additional_name-additional_level pair in a summarised_result

## Usage

``` r
filterAdditional(result, ...)
```

## Arguments

- result:

  A `<summarised_result>` object.

- ...:

  Expressions that return a logical value
  ([`additionalColumns()`](https://darwin-eu.github.io/omopgenerics/reference/additionalColumns.md)
  are used to evaluate the expression), and are defined in terms of the
  variables in .data. If multiple expressions are included, they are
  combined with the & operator. Only rows for which all conditions
  evaluate to TRUE are kept.

## Value

A `<summarised_result>` object with only the rows that fulfill the
required specified additional.

## Examples

``` r
library(dplyr)
library(omopgenerics)

x <- tibble(
  "result_id" = 1L,
  "cdm_name" = "eunomia",
  "group_name" = "cohort_name",
  "group_level" = c("cohort1", "cohort2", "cohort3"),
  "strata_name" = "sex",
  "strata_level" = "Female",
  "variable_name" = "number subjects",
  "variable_level" = NA_character_,
  "estimate_name" = "count",
  "estimate_type" = "integer",
  "estimate_value" = c("100", "44", "14"),
  "additional_name" = c("year", "time_step", "year &&& time_step"),
  "additional_level" = c("2010", "4", "2015 &&& 5")
) |>
  newSummarisedResult()
#> `result_type`, `package_name`, and `package_version` added to settings.

x |>
  filterAdditional(year == "2010")
#> # A tibble: 1 × 13
#>   result_id cdm_name group_name  group_level strata_name strata_level
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>       
#> 1         1 eunomia  cohort_name cohort1     sex         Female      
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
