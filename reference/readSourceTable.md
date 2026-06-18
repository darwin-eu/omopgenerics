# Read a table from the cdm_source and add it to the cdm.

Read a table from the cdm_source and add it to the cdm.

## Usage

``` r
readSourceTable(cdm, name)
```

## Arguments

- cdm:

  A `<cdm_reference>` or `<cdm_table>` object.

- name:

  Name of a table to read in the cdm_source space. Tidyselect statements
  are supported.

## Value

A cdm_reference with new table.
