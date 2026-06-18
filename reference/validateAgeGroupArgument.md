# Validate the ageGroup argument. It must be a list of two integerish numbers lower age and upper age, both of the must be greater or equal to 0 and lower age must be lower or equal to the upper age. If not named automatic names will be given in the output list.

Validate the ageGroup argument. It must be a list of two integerish
numbers lower age and upper age, both of the must be greater or equal to
0 and lower age must be lower or equal to the upper age. If not named
automatic names will be given in the output list.

## Usage

``` r
validateAgeGroupArgument(
  ageGroup,
  multipleAgeGroup = TRUE,
  overlap = FALSE,
  null = TRUE,
  empty = TRUE,
  ageGroupName = "age_group",
  nm = deparse1(substitute(ageGroup), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- ageGroup:

  age group in a list.

- multipleAgeGroup:

  Allow multiple age groups.

- overlap:

  allow overlapping ageGroup.

- null:

  null age group allowed true or false.

- empty:

  Whether it can be empty.

- ageGroupName:

  Name of the default age group.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `ageGroup`.

- call:

  Call argument passed to `cli` functions.

## Value

validate ageGroup

## Examples

``` r
validateAgeGroupArgument(list(c(0, 39), c(40, Inf)))
#> $age_group
#> $age_group$`0 to 39`
#> [1]  0 39
#> 
#> $age_group$`40 or above`
#> [1]  40 Inf
#> 
#> 
```
