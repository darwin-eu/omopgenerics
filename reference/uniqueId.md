# Get a unique Identifier with a certain number of characters and a prefix.

Get a unique Identifier with a certain number of characters and a
prefix.

## Usage

``` r
uniqueId(n = 1, exclude = character(), nChar = 3, prefix = "id_")
```

## Arguments

- n:

  Number of identifiers.

- exclude:

  Columns to exclude.

- nChar:

  Number of characters.

- prefix:

  A prefix for the identifiers.

## Value

A character vector with n unique identifiers.
