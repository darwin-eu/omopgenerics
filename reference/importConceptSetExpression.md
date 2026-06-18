# Import a concept set expression.

Import a concept set expression.

## Usage

``` r
importConceptSetExpression(path, type = NULL, recursive = FALSE)
```

## Arguments

- path:

  Path to a file or directory to import.

- type:

  Type of files to import. If `NULL`, all supported file types are
  imported. Currently 'json' and 'csv' are supported.

- recursive:

  If TRUE and path is a directory, search for files will recurse into
  directories.

## Value

A concept set expression
