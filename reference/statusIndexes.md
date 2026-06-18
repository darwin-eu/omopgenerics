# Status of the indexes

**\[experimental\]**

## Usage

``` r
statusIndexes(x, name = NULL)
```

## Arguments

- x:

  A `<cdm_reference>` or `<cdm_table>` object.

- name:

  Name(s) of the CDM table(s).

## Value

A tibble with 3 columns: `table_class` class of the table, `table_name`
name of the table, `index` index definition, and `index_status` status
of the index, either: 'missing', 'extra', 'present'.
