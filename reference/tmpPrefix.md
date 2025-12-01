# Create a temporary prefix for tables, that contains a unique prefix that starts with tmp.

Create a temporary prefix for tables, that contains a unique prefix that
starts with tmp.

## Usage

``` r
tmpPrefix()
```

## Value

A temporary prefix.

## Examples

``` r
library(omopgenerics)
tmpPrefix()
#> [1] "tmp_002_"
```
