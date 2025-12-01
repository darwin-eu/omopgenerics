# Import a set of summarised results.

Import a set of summarised results.

## Usage

``` r
importSummarisedResult(path, recursive = FALSE, ...)
```

## Arguments

- path:

  Path to directory with CSV files containing summarised results or to a
  specific CSV file with a summarised result.

- recursive:

  If TRUE and path is a directory, search for files will recurse into
  directories

- ...:

  Passed to
  [`readr::read_csv`](https://readr.tidyverse.org/reference/read_delim.html).

## Value

A summarised result
