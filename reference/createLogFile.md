# Create a log file

Create a log file

## Usage

``` r
createLogFile(logFile = here::here("log_{date}_{time}"))
```

## Arguments

- logFile:

  File path to write logging messages. You can use '{date}' and '{time}'
  to add the date and time in the log file name.

## Value

Invisible TRUE if logger was created correctly.

## Examples

``` r
library(dplyr)

logFile <- tempfile(pattern = "log_{date}_{time}", fileext = ".txt")
createLogFile(logFile = logFile)
#> ℹ Creating log file: /tmp/Rtmp9wn4zb/log_2025_12_01_18_30_441908675dddf1.txt.
#> [2025-12-01 18:30:44] - Log file created

logMessage("Starting analysis")
#> [2025-12-01 18:30:44] - Starting analysis
1 + 1
#> [1] 2
logMessage("Analysis finished")
#> [2025-12-01 18:30:44] - Analysis finished

res <- summariseLogFile()
#> [2025-12-01 18:30:44] - Exporting log file

glimpse(res)
#> Rows: 4
#> Columns: 13
#> $ result_id        <int> 1, 1, 1, 1
#> $ cdm_name         <chr> "unknown", "unknown", "unknown", "unknown"
#> $ group_name       <chr> "overall", "overall", "overall", "overall"
#> $ group_level      <chr> "overall", "overall", "overall", "overall"
#> $ strata_name      <chr> "log_id", "log_id", "log_id", "log_id"
#> $ strata_level     <chr> "1", "2", "3", "4"
#> $ variable_name    <chr> "Log file created", "Starting analysis", "Analysis fi…
#> $ variable_level   <chr> NA, NA, NA, NA
#> $ estimate_name    <chr> "date_time", "date_time", "date_time", "date_time"
#> $ estimate_type    <chr> "character", "character", "character", "character"
#> $ estimate_value   <chr> "2025-12-01 18:30:44", "2025-12-01 18:30:44", "2025-1…
#> $ additional_name  <chr> "overall", "overall", "overall", "overall"
#> $ additional_level <chr> "overall", "overall", "overall", "overall"

tidy(res)
#> # A tibble: 4 × 5
#>   cdm_name log_id variable_name      variable_level date_time          
#>   <chr>    <chr>  <chr>              <chr>          <chr>              
#> 1 unknown  1      Log file created   NA             2025-12-01 18:30:44
#> 2 unknown  2      Starting analysis  NA             2025-12-01 18:30:44
#> 3 unknown  3      Analysis finished  NA             2025-12-01 18:30:44
#> 4 unknown  4      Exporting log file NA             2025-12-01 18:30:44
```
