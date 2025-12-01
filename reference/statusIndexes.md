# Status of the indexes

**\[experimental\]**

## Usage

``` r
statusIndexes(cdm, name = NULL)
```

## Arguments

- cdm:

  A cdm_reference object.

- name:

  Name(s) of the cdm tables.

## Value

A tibble with 3 columns: `table_class` class of the table, `table_name`
name of the table, `index` index definition, and `index_status` status
of the index, either: 'missing', 'extra', 'present'.
