# Expected indexes in a cdm object

**\[experimental\]**

## Usage

``` r
expectedIndexes(cdm, name)
```

## Arguments

- cdm:

  A cdm_reference object.

- name:

  Name(s) of the cdm tables.

## Value

A tibble with 3 columns: `table_class` class of the table, `table_name`
name of the table, and `expected_index` index definition.
