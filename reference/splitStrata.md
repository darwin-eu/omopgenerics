# Split strata_name and strata_level columns

Pivots the input dataframe so the values of the column strata_name are
transformed into columns that contain values from the strata_level
column.

## Usage

``` r
splitStrata(result, keep = FALSE, fill = "overall")
```

## Arguments

- result:

  A dataframe with at least the columns strata_name and strata_level.

- keep:

  Whether to keep the original group_name and group_level columns.

- fill:

  Optionally, a character that specifies what value should be filled in
  with when missing.

## Value

A dataframe.

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

  x |> splitStrata()
}
#> `result_type`, `package_name`, and `package_version` added to settings.
#> # A tibble: 2 × 12
#>   result_id cdm_name group_name  group_level sex   variable_name variable_level
#>       <int> <chr>    <chr>       <chr>       <chr> <chr>         <chr>         
#> 1         1 cprd     cohort_name my_cohort   male  Age group     10 to 50      
#> 2         2 eunomia  cohort_name my_cohort   male  Age group     10 to 50      
#> # ℹ 5 more variables: estimate_name <chr>, estimate_type <chr>,
#> #   estimate_value <chr>, additional_name <chr>, additional_level <chr>
```
