# Assert that an object is a list.

Assert that an object is a list.

## Usage

``` r
assertList(
  x,
  length = NULL,
  na = FALSE,
  null = FALSE,
  unique = FALSE,
  named = FALSE,
  class = NULL,
  call = parent.frame(),
  msg = NULL
)
```

## Arguments

- x:

  Variable to check.

- length:

  Required length. If `NULL` length is not checked.

- na:

  Whether it can contain NA values.

- null:

  Whether it can be NULL.

- unique:

  Whether it has to contain unique elements.

- named:

  Whether it has to be named.

- class:

  Class that the elements must have.

- call:

  Call argument that will be passed to `cli` error message.

- msg:

  Custom error message.
