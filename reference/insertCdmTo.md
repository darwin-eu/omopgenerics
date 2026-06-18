# Insert a cdm_reference object to a different source.

Insert a cdm_reference object to a different source.

## Usage

``` r
insertCdmTo(cdm, to)
```

## Arguments

- cdm:

  A `<cdm_reference>` object.

- to:

  A cdm_source or another cdm_reference, with a valid cdm_source.

## Value

The first cdm_reference object inserted to the source.

## Details

If `cdm` is not local, it will be collected into memory before
insertion.
