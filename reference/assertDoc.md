# Helper for consistent documentation of assertion functions.

Helper for consistent documentation of assertion functions.

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

- nm:

  Name to use in error messages. Defaults to the expression supplied to
  `x`.

- call:

  Call argument that will be passed to `cli`.

- msg:

  Custom error message.
