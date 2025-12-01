# Empty `summarised_result` object.

Empty `summarised_result` object.

## Usage

``` r
emptySummarisedResult(settings = NULL)
```

## Arguments

- settings:

  Tibble/data.frame with the settings of the empty summarised_result. It
  has to contain at least `result_id` column.

## Value

An empty `summarised_result` object.

## Examples

``` r
library(omopgenerics)

emptySummarisedResult()
#> # A tibble: 0 × 13
#> # ℹ 13 variables: result_id <int>, cdm_name <chr>, group_name <chr>,
#> #   group_level <chr>, strata_name <chr>, strata_level <chr>,
#> #   variable_name <chr>, variable_level <chr>, estimate_name <chr>,
#> #   estimate_type <chr>, estimate_value <chr>, additional_name <chr>,
#> #   additional_level <chr>
```
