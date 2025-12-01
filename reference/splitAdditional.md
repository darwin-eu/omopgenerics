# Split additional_name and additional_level columns

Pivots the input dataframe so the values of the column additional_name
are transformed into columns that contain values from the
additional_level column.

## Usage

``` r
splitAdditional(result, keep = FALSE, fill = "overall")
```

## Arguments

- result:

  A dataframe with at least the columns additional_name and
  additional_level.

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

  x |> splitAdditional()
}
#> `result_type`, `package_name`, and `package_version` added to settings.
#> # A tibble: 2 × 11
#>   result_id cdm_name group_name  group_level strata_name strata_level
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>       
#> 1         1 cprd     cohort_name my_cohort   sex         male        
#> 2         2 eunomia  cohort_name my_cohort   sex         male        
#> # ℹ 5 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>
```
