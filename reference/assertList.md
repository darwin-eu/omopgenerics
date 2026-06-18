# Assert that an object is a list.

Assert that an object is a list.

## Usage

``` r
assertList(
  x,
  length = NULL,
  na = FALSE,
  null = FALSE,
  empty = TRUE,
  unique = FALSE,
  named = FALSE,
  class = NULL,
  nm = deparse1(substitute(x), backtick = TRUE),
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

- empty:

  Whether it can be empty.

- unique:

  Whether it has to contain unique elements.

- named:

  Whether it has to be named.

- class:

  Class that the elements must have.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `x`.

- call:

  Call argument that will be passed to `cli`.

- msg:

  Custom error message.
