# Create a unique table name

Create a unique table name

## Usage

``` r
uniqueTableName(prefix = "")
```

## Arguments

- prefix:

  Prefix for the table names.

## Value

A string that can be used as a dbplyr temp table name

## Examples

``` r
library(omopgenerics)
uniqueTableName()
#> [1] "og_002_1769622347"
```
