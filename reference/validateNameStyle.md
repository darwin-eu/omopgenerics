# Validate `nameStyle` argument. If any of the element in `...` has length greater than 1 it must be contained in nameStyle. Note that snake case notation is used.

Validate `nameStyle` argument. If any of the element in `...` has length
greater than 1 it must be contained in nameStyle. Note that snake case
notation is used.

## Usage

``` r
validateNameStyle(nameStyle, ..., call = parent.frame())
```

## Arguments

- nameStyle:

  A character vector. It must contain all the `...` elements in
  snake_case format and between
  [`{}`](https://rdrr.io/r/base/Paren.html).

- ...:

  Elements to be included.

- call:

  Passed to cli functions.

## Value

invisible nameStyle.

## Examples

``` r
validateNameStyle(
  nameStyle = "hi_{cohort_name}",
  cohortName = c("cohort1", "cohort2"),
  otherVariable = c("only 1 value")
)

if (FALSE) { # \dontrun{
validateNameStyle(
  nameStyle = "hi_{cohort_name}",
  cohortName = c("cohort1", "cohort2"),
  otherVariable = c("value1", "value2")
)
} # }
validateNameStyle(
  nameStyle = "{other_variable}_hi_{cohort_name}",
  cohortName = c("cohort1", "cohort2"),
  otherVariable = c("value1", "value2")
)
```
