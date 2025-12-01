# Validate if a an object is a valid 'summarised_result' object.

Validate if a an object is a valid 'summarised_result' object.

## Usage

``` r
validateResultArgument(
  result,
  checkNoDuplicates = FALSE,
  checkNameLevel = FALSE,
  checkSuppression = FALSE,
  validation = "error",
  call = parent.frame()
)
```

## Arguments

- result:

  summarised_result object to validate.

- checkNoDuplicates:

  Whether there are not allowed duplicates in the result object.

- checkNameLevel:

  Whether the name-level paired columns are can be correctly split.

- checkSuppression:

  Whether the suppression in the result object is well defined.

- validation:

  Only error is supported at the moment.

- call:

  parent.frame

## Value

summarise result object

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

validateResultArgument(x)
#> # A tibble: 3 × 13
#>   result_id cdm_name group_name  group_level strata_name       strata_level   
#>       <int> <chr>    <chr>       <chr>       <chr>             <chr>          
#> 1         1 eunomia  cohort_name my_cohort   sex               Female         
#> 2         1 eunomia  cohort_name my_cohort   sex &&& age_group Male &&& <40   
#> 3         1 eunomia  cohort_name my_cohort   sex &&& year      Female &&& 2010
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>
```
