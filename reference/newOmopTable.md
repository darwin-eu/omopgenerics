# Create an omop table from a cdm table.

Create an omop table from a cdm table.

## Usage

``` r
newOmopTable(table, version = "5.3", cast = FALSE)
```

## Arguments

- table:

  A `<cdm_table>` object.

- version:

  Version of the OMOP Common Data Model. Supported options are: "5.3",
  "5.4", or "5.5".

- cast:

  Whether to cast columns to the correct type.

## Value

An omop_table object
