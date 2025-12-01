# Create a \<summarised_result\> object from a data.frame, given a set of specifications.

Create a \<summarised_result\> object from a data.frame, given a set of
specifications.

## Usage

``` r
transformToSummarisedResult(
  x,
  group = character(),
  strata = character(),
  additional = character(),
  estimates = character(),
  settings = character()
)
```

## Arguments

- x:

  A data.frame.

- group:

  Columns in x to be used in group_name-group_level formatting.

- strata:

  Columns in x to be used in strata_name-strata_level formatting.

- additional:

  Columns in x to be used in additional_name-additional_level
  formatting.

- estimates:

  Columns in x to be formatted into:
  estimate_name-estimate_type-estimate_value.

- settings:

  Columns in x thta form the settings of the \<summarised_result\>
  object.

## Value

A \<summarised_result\> object.

## Examples

``` r
x <- dplyr::tibble(
  cohort_name = c("cohort1", "cohort2"),
  variable_name = "age",
  mean = c(50, 45.3),
  median = c(55L, 44L)
)

transformToSummarisedResult(
  x = x,
  group = c("cohort_name"),
  estimates = c("mean", "median")
)
#> ℹ Column `cdm_name` created as 'unknown' as not present in x.
#> ℹ Column `variable_level` created as 'overall' as not present in x.
#> `result_type`, `package_name`, and `package_version` added to settings.
#> # A tibble: 4 × 13
#>   result_id cdm_name group_name  group_level strata_name strata_level
#>       <int> <chr>    <chr>       <chr>       <chr>       <chr>       
#> 1         1 unknown  cohort_name cohort1     overall     overall     
#> 2         1 unknown  cohort_name cohort1     overall     overall     
#> 3         1 unknown  cohort_name cohort2     overall     overall     
#> 4         1 unknown  cohort_name cohort2     overall     overall     
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
