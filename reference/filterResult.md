# Filter a `<summarised_result>` automatically

Filter a `<summarised_result>` automatically

## Usage

``` r
filterResult(result, ...)
```

## Arguments

- result:

  A `<summarised_result>` object.

- ...:

  Expressions that return a logical value. The columns used in the
  expressions can be stored in the settings, strata, group, or
  additional columns. `filterResult()` looks for columns using this
  hierarchy: settings, strata, group, then additional. If multiple
  expressions are included, they are combined with the & operator. Only
  rows for which all conditions evaluate to TRUE are kept.

## Value

A `<summarised_result>` object with only the rows that satisfy the
specified filters.

## Examples

``` r
library(dplyr)
library(omopgenerics)

x <- tibble(
  "result_id" = 1L,
  "cdm_name" = "eunomia",
  "group_name" = "cohort_name",
  "group_level" = "my_cohort",
  "strata_name" = "sex",
  "strata_level" = "Female",
  "variable_name" = "number subjects",
  "variable_level" = NA_character_,
  "estimate_name" = "count",
  "estimate_type" = "integer",
  "estimate_value" = "100",
  "additional_name" = "overall",
  "additional_level" = "overall"
) |>
  newSummarisedResult(settings = tibble(
    "result_id" = 1L, "analysis" = "overall"
  ))
#> `result_type`, `package_name`, and `package_version` added to settings.

x |>
  filterResult(cohort_name == "my_cohort", sex == "Female")
#> Filtering using group.
#> Filtering using strata.
#> # A tibble: 1 × 13
#>   result_id cdm_name group_name  group_level strata_name strata_level
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>       
#> 1         1 eunomia  cohort_name my_cohort   sex         Female      
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
