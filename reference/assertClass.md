# Assert that an object has a certain class.

Assert that an object has a certain class.

## Usage

``` r
assertClass(
  x,
  class,
  length = NULL,
  null = FALSE,
  all = FALSE,
  extra = TRUE,
  call = parent.frame(),
  msg = NULL
)
```

## Arguments

- x:

  To check.

- class:

  Expected class or classes.

- length:

  Required length. If `NULL` length is not checked.

- null:

  Whether it can be NULL.

- all:

  Whether it should have all the classes or only at least one of them.

- extra:

  Whether the object can have extra classes.

- call:

  Call argument that will be passed to `cli`.

- msg:

  Custom error message.
