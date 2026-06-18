# Existing indexes in a cdm object

**\[experimental\]**

## Usage

``` r
existingIndexes(x, name)
```

## Arguments

- x:

  A `<cdm_reference>` or `<cdm_table>` object.

- name:

  Name(s) of the CDM table(s).

## Value

A tibble with 3 columns: `table_class` class of the table, `table_name`
name of the table, and `existing_index` index definition.
