# Split all pairs name-level into columns.

Pivots the input dataframe so any pair name-level columns are
transformed into columns (name) that contain values from the
corresponding level.

## Usage

``` r
splitAll(result, keep = FALSE, fill = "overall", exclude = "variable")
```

## Arguments

- result:

  A data.frame.

- keep:

  Whether to keep the original name-level columns.

- fill:

  A character that specifies what value should be filled in when
  missing.

- exclude:

  Name of a column pair to exclude.

## Value

A dataframe with group, strata and additional as columns.

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

  x |> splitAll()
}
#> `result_type`, `package_name`, and `package_version` added to settings.
#> # A tibble: 2 × 9
#>   result_id cdm_name cohort_name sex   variable_name variable_level
#>       <int> <chr>    <chr>       <chr> <chr>         <chr>         
#> 1         1 cprd     my_cohort   male  Age group     10 to 50      
#> 2         2 eunomia  my_cohort   male  Age group     10 to 50      
#> # ℹ 3 more variables: estimate_name <chr>, estimate_type <chr>,
#> #   estimate_value <chr>
```
