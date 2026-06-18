# A new read-only source for the cdm

This source can be used for `cdm_reference` objects that should allow
reading existing CDM tables, but should not allow creating, computing,
inserting, reading from, or dropping source tables.

## Usage

``` r
newReadOnlySource()
```

## Value

A read-only source in the format of a cdm source.

## Examples

``` r
# \donttest{
library(omopgenerics)
newReadOnlySource()
#> This is a read_only cdm source
# }
```
