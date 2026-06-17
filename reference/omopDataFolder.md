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
#> [1] "/tmp/RtmpxDIQCF/OMOP_DATA_FOLDER"
omopDataFolder(file.path(tempdir(), "OMOP_DATA"))
#> ℹ Creating /tmp/RtmpxDIQCF/OMOP_DATA.
omopDataFolder()
#> [1] "/tmp/RtmpxDIQCF/OMOP_DATA"
# }
```
