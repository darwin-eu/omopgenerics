# Assert that an object is a character and fulfill certain conditions.

Assert that an object is a character and fulfill certain conditions.

## Usage

``` r
assertCharacter(
  x,
  length = NULL,
  na = FALSE,
  null = FALSE,
  unique = FALSE,
  named = FALSE,
  minNumCharacter = 0,
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

- minNumCharacter:

  Minimum number of characters that all elements must have.

- call:

  Call argument that will be passed to `cli` error message.

- msg:

  Custom error message.
