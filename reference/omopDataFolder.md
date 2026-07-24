# Check or set the OMOP_DATA_FOLDER where the OMOP related data is stored.

Check or set the OMOP_DATA_FOLDER where the OMOP related data is stored.

## Usage

``` r
omopDataFolder(path = NULL)
```

## Arguments

- path:

  Path to a folder to store the OMOP related data. If NULL the current
  `OMOP_DATA_FOLDER` is returned.

## Value

The OMOP data folder.

## Examples

``` r
# \donttest{
omopDataFolder()
#> [1] "/tmp/RtmpoAy5cp/OMOP_DATA_FOLDER"
omopDataFolder(file.path(tempdir(), "OMOP_DATA"))
#> ℹ Creating /tmp/RtmpoAy5cp/OMOP_DATA.
omopDataFolder()
#> [1] "/tmp/RtmpoAy5cp/OMOP_DATA"
# }
```
