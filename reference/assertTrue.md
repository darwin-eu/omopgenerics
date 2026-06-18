# Assert that an expression is TRUE.

Assert that an expression is TRUE.

## Usage

``` r
assertTrue(
  x,
  null = FALSE,
  empty = TRUE,
  nm = deparse1(substitute(x), backtick = TRUE),
  call = parent.frame(),
  msg = NULL
)
```

## Arguments

- x:

  Expression to check.

- null:

  Whether it can be NULL.

- empty:

  Whether it can be empty.

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `x`.

- call:

  Call argument that will be passed to `cli`.

- msg:

  Custom error message.
