# Validate name argument. It must be a snake_case character vector. You can add the a cdm object to check `name` is not already used in that cdm.

Validate name argument. It must be a snake_case character vector. You
can add the a cdm object to check `name` is not already used in that
cdm.

## Usage

``` r
validateNameArgument(
  name,
  cdm = NULL,
  validation = "error",
  null = FALSE,
  call = parent.frame()
)
```

## Arguments

- name:

  Name of a new table to be added to a cdm object.

- cdm:

  A cdm_reference object. It will check if a table named name already
  exists in the cdm.

- validation:

  How to perform validation: "error", "warning".

- null:

  If TRUE, name can be NULL

- call:

  A call argument to pass to cli functions.

## Examples

``` r
# this is a validate name
name <- "my_new_table"
validateNameArgument(name)
#> [1] "my_new_table"

# this is not
name <- "myTableNAME"
validateNameArgument(name, validation = "warning")
#> Warning: ! `name` was modified: myTableNAME -> my_table_name
#> [1] "my_table_name"
```
