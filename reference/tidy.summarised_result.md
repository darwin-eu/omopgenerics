# Turn a `<summarised_result>` object into a tidy tibble

**\[experimental\]** Provides tools for obtaining a tidy version of a
`<summarised_result>` object. This tidy version will include the
settings as columns, `estimate_value` will be pivotted into columns
using `estimate_name` as names, and group, strata, and additional will
be splitted.

## Usage

``` r
# S3 method for class 'summarised_result'
tidy(x, ...)
```

## Arguments

- x:

  A `<summarised_result>`.

- ...:

  For compatibility (not used).

## Value

A tibble.

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

  x |> tidy()
}
#> `result_type`, `package_name`, and `package_version` added to settings.
#> # A tibble: 2 × 7
#>   cdm_name cohort_name sex   variable_name variable_level count custom
#>   <chr>    <chr>       <chr> <chr>         <chr>          <dbl> <chr> 
#> 1 cprd     my_cohort   male  Age group     10 to 50           5 A     
#> 2 eunomia  my_cohort   male  Age group     10 to 50           5 B     
```
