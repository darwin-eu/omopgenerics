# Assert that an object is a logical.

Assert that an object is a logical.

## Usage

``` r
assertLogical(
  x,
  length = NULL,
  na = FALSE,
  null = FALSE,
  unique = FALSE,
  named = FALSE,
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

- call:

  Call argument that will be passed to `cli` error message.

- msg:

  Custom error message.
