# Unite one or more columns in strata_name-strata_level format

Unites targeted table columns into strata_name-strata_level columns.

## Usage

``` r
uniteStrata(x, cols = character(0), keep = FALSE, ignore = c(NA, "overall"))
```

## Arguments

- x:

  Tibble or dataframe.

- cols:

  Columns to aggregate.

- keep:

  Whether to keep the original columns.

- ignore:

  Level values to ignore.

## Value

A tibble with the new columns.

## Examples

``` r
x <- dplyr::tibble(
  variable = "number subjects",
  value = c(10, 15, 40, 78),
  sex = c("Male", "Female", "Male", "Female"),
  age_group = c("<40", ">40", ">40", "<40")
)

x |>
  uniteStrata(c("sex", "age_group"))
#> # A tibble: 4 × 4
#>   variable        value strata_name       strata_level  
#>   <chr>           <dbl> <chr>             <chr>         
#> 1 number subjects    10 sex &&& age_group Male &&& <40  
#> 2 number subjects    15 sex &&& age_group Female &&& >40
#> 3 number subjects    40 sex &&& age_group Male &&& >40  
#> 4 number subjects    78 sex &&& age_group Female &&& <40
```
