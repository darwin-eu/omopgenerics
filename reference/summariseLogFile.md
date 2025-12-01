# Summarise and extract the information of a log file into a `summarised_result` object.

Summarise and extract the information of a log file into a
`summarised_result` object.

## Usage

``` r
summariseLogFile(
  logFile = getOption("omopgenerics.logFile"),
  cdmName = "unknown"
)
```

## Arguments

- logFile:

  File path to the log file to summarise. Create a logFile with
  [`createLogFile()`](https://darwin-eu.github.io/omopgenerics/reference/createLogFile.md).

- cdmName:

  Name of the cdm for the `summarise_result` object.

## Value

A `summarise_result` with the information of the log file.

## Examples

``` r
library(dplyr)

logFile <- tempfile(pattern = "log_{date}_{time}", fileext = ".txt")
createLogFile(logFile = logFile)
#> ! Overwriting current log file
#> ℹ Creating log file: /tmp/RtmpLm3dfo/log_2025_12_01_18_43_59191d2270369b.txt.
#> [2025-12-01 18:43:59] - Log file created

logMessage("Starting analysis")
#> [2025-12-01 18:43:59] - Starting analysis
1 + 1
#> [1] 2
logMessage("Analysis finished")
#> [2025-12-01 18:43:59] - Analysis finished

res <- summariseLogFile()
#> [2025-12-01 18:43:59] - Exporting log file

glimpse(res)
#> Rows: 7
#> Columns: 13
#> $ result_id        <int> 1, 1, 1, 1, 1, 1, 1
#> $ cdm_name         <chr> "unknown", "unknown", "unknown", "unknown", "unknown"…
#> $ group_name       <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ group_level      <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ strata_name      <chr> "log_id", "log_id", "log_id", "log_id", "log_id", "lo…
#> $ strata_level     <chr> "1", "1", "2", "2", "3", "3", "4"
#> $ variable_name    <chr> "Log file created", "Log file created", "Starting ana…
#> $ variable_level   <chr> NA, NA, NA, NA, NA, NA, NA
#> $ estimate_name    <chr> "date_time", "elapsed_time", "date_time", "elapsed_ti…
#> $ estimate_type    <chr> "character", "integer", "character", "integer", "char…
#> $ estimate_value   <chr> "2025-12-01 18:43:59", "0", "2025-12-01 18:43:59", "0…
#> $ additional_name  <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ additional_level <chr> "overall", "overall", "overall", "overall", "overall"…

tidy(res)
#> # A tibble: 4 × 6
#>   cdm_name log_id variable_name      variable_level date_time       elapsed_time
#>   <chr>    <chr>  <chr>              <chr>          <chr>                  <int>
#> 1 unknown  1      Log file created   NA             2025-12-01 18:…            0
#> 2 unknown  2      Starting analysis  NA             2025-12-01 18:…            0
#> 3 unknown  3      Analysis finished  NA             2025-12-01 18:…            0
#> 4 unknown  4      Exporting log file NA             2025-12-01 18:…           NA
```
