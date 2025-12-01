# Get the column name with the person identifier from a table (either subject_id or person_id), it will throw an error if it contains both or neither.

Get the column name with the person identifier from a table (either
subject_id or person_id), it will throw an error if it contains both or
neither.

## Usage

``` r
getPersonIdentifier(x, call = parent.frame())
```

## Arguments

- x:

  A table.

- call:

  A call argument passed to cli functions.

## Value

Person identifier column.
