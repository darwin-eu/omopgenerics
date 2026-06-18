# Import a codelist with details.

Import a codelist with details.

## Usage

``` r
importCodelistWithDetails(path, type = NULL, recursive = FALSE)
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

A codelist_with_details object.
