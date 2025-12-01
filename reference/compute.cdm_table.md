# Store results in a table.

Store results in a table.

## Usage

``` r
# S3 method for class 'cdm_table'
compute(
  x,
  name = NULL,
  temporary = NULL,
  overwrite = TRUE,
  logPrefix = NULL,
  ...
)
```

## Arguments

- x:

  Table in the cdm.

- name:

  Name to store the table with.

- temporary:

  Whether to store table temporarily (TRUE) or permanently (FALSE).

- overwrite:

  Whether to overwrite previously existing table with name same.

- logPrefix:

  Prefix to use when saving a log file.

- ...:

  For compatibility (not used).

## Value

Reference to a table in the cdm
