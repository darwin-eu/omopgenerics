# Assert Date

Assert Date

## Usage

``` r
assertDate(
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

  Expression to check.

- length:

  Required length.

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

## Value

x
