# Validate name argument. It must be a snake_case character vector. You can add a cdm object to check that `name` is not already used in that cdm.

Validate name argument. It must be a snake_case character vector. You
can add a cdm object to check that `name` is not already used in that
cdm.

## Usage

``` r
validateNameArgument(
  name,
  cdm = NULL,
  validation = "error",
  null = FALSE,
  empty = TRUE,
  nm = deparse1(substitute(name), backtick = TRUE),
  call = parent.frame()
)
```

## Arguments

- name:

  Name of a new table to be added to a cdm object.

- cdm:

  A `<cdm_reference>` object. If provided, the name will be checked to
  ensure it does not already exist in the cdm.

- validation:

  How to perform validation: "error", "warning".

- null:

  If TRUE, name can be NULL

- empty:

  Whether it can be empty.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `name`.

- call:

  Call argument passed to `cli` functions.

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
