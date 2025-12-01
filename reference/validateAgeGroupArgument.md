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
  ageGroupName = "age_group",
  call = parent.frame()
)
```

## Arguments

- ageGroup:

  age group in a list.

- multipleAgeGroup:

  allow mutliple age group.

- overlap:

  allow overlapping ageGroup.

- null:

  null age group allowed true or false.

- ageGroupName:

  Name of the default age group.

- call:

  parent frame.

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
