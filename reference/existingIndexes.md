# Existing indexes in a cdm object

**\[experimental\]**

## Usage

``` r
existingIndexes(cdm, name)
```

## Arguments

- cdm:

  A cdm_reference object.

- name:

  Name(s) of the cdm tables.

## Value

A tibble with 3 columns: `table_class` class of the table, `table_name`
name of the table, and `existing_index` index definition.
