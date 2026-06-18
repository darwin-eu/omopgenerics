# Assert that an object has a certain class.

Assert that an object has a certain class.

## Usage

``` r
assertClass(
  x,
  class,
  length = NULL,
  null = FALSE,
  empty = TRUE,
  all = FALSE,
  extra = TRUE,
  nm = deparse1(substitute(x), backtick = TRUE),
  call = parent.frame(),
  msg = NULL
)
```

## Arguments

- x:

  Variable to check.

- class:

  Expected class or classes.

- length:

  Required length. If `NULL` length is not checked.

- null:

  Whether it can be NULL.

- empty:

  Whether it can be empty.

- all:

  Whether it should have all the classes or only at least one of them.

- extra:

  Whether the object can have extra classes.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `x`.

- call:

  Call argument that will be passed to `cli`.

- msg:

  Custom error message.
