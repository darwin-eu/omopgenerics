# To check whether an object is already suppressed to a certain min cell count.

To check whether an object is already suppressed to a certain min cell
count.

## Usage

``` r
isResultSuppressed(result, minCellCount = 5)
```

## Arguments

- result:

  The suppressed result to check

- minCellCount:

  Minimum count of records used when suppressing

## Value

Warning or message with check result

## Examples

``` r
x <- dplyr::tibble(
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

isResultSuppressed(x)
#> Warning: ✖ 1 set (3 rows) not suppressed.
#> [1] FALSE
```
