# Filter the strata_name-strata_level pair in a summarised_result

Filter the strata_name-strata_level pair in a summarised_result

## Usage

``` r
filterStrata(result, ...)
```

## Arguments

- result:

  A `<summarised_result>` object.

- ...:

  Expressions that return a logical value
  ([`strataColumns()`](https://darwin-eu.github.io/omopgenerics/reference/strataColumns.md)
  are used to evaluate the expression), and are defined in terms of the
  variables in .data. If multiple expressions are included, they are
  combined with the & operator. Only rows for which all conditions
  evaluate to TRUE are kept.

## Value

A `<summarised_result>` object with only the rows that fulfill the
required specified strata.

## Examples

``` r
library(dplyr)
library(omopgenerics)

x <- tibble(
  "result_id" = 1L,
  "cdm_name" = "eunomia",
  "group_name" = "cohort_name",
  "group_level" = "my_cohort",
  "strata_name" = c("sex", "sex &&& age_group", "sex &&& year"),
  "strata_level" = c("Female", "Male &&& <40", "Female &&& 2010"),
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
  filterStrata(sex == "Female")
#> # A tibble: 2 × 13
#>   result_id cdm_name group_name  group_level strata_name  strata_level   
#>       <int> <chr>    <chr>       <chr>       <chr>        <chr>          
#> 1         1 eunomia  cohort_name my_cohort   sex          Female         
#> 2         1 eunomia  cohort_name my_cohort   sex &&& year Female &&& 2010
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
