# Filter the group_name-group_level pair in a summarised_result

Filter the group_name-group_level pair in a summarised_result

## Usage

``` r
filterGroup(result, ...)
```

## Arguments

- result:

  A `<summarised_result>` object.

- ...:

  Expressions that return a logical value
  ([`groupColumns()`](https://darwin-eu.github.io/omopgenerics/reference/groupColumns.md)
  are used to evaluate the expression), and are defined in terms of the
  variables in .data. If multiple expressions are included, they are
  combined with the & operator. Only rows for which all conditions
  evaluate to TRUE are kept.

## Value

A `<summarised_result>` object with only the rows that fulfill the
required specified group.

## Examples

``` r
library(dplyr)
library(omopgenerics)

x <- tibble(
  "result_id" = 1L,
  "cdm_name" = "eunomia",
  "group_name" = c("cohort_name", "age_group &&& cohort_name", "age_group"),
  "group_level" = c("my_cohort", ">40 &&& second_cohort", "<40"),
  "strata_name" = "sex",
  "strata_level" = "Female",
  "variable_name" = "number subjects",
  "variable_level" = NA_character_,
  "estimate_name" = "count",
  "estimate_type" = "integer",
  "estimate_value" = c("100", "44", "14"),
  "additional_name" = "overall",
  "additional_level" = "overall"
) |>
  newSummarisedResult()
#> `result_type`, `package_name`, and `package_version` added to settings.

x |>
  filterGroup(cohort_name == "second_cohort")
#> # A tibble: 1 × 13
#>   result_id cdm_name group_name             group_level strata_name strata_level
#>       <int> <chr>    <chr>                  <chr>       <chr>       <chr>       
#> 1         1 eunomia  age_group &&& cohort_… >40 &&& se… sex         Female      
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
