# Log a message to a logFile

The message is written to the logFile and displayed in the console, if
`logFile` does not exist the message is only displayed in the console.
cli formatting is preserved in the console and removed from the text
file.

## Usage

``` r
logMessage(
  message = "Start logging file",
  logFile = getOption("omopgenerics.logFile")
)
```

## Arguments

- message:

  Message to log. cli expressions in braces are evaluated in the calling
  environment.

- logFile:

  File path to write logging messages. Create a logFile with
  [`createLogFile()`](https://darwin-eu.github.io/omopgenerics/reference/createLogFile.md).

## Value

Invisible TRUE if the logging message is written to a log file.

## Examples

``` r
library(dplyr)

logFile <- tempfile(pattern = "log_{date}_{time}", fileext = ".txt")
createLogFile(logFile = logFile)
#> ! Overwriting current log file
#> ℹ Creating log file: /tmp/RtmpZqbNfA/log_2026_09_08_16_22_4819ac24cbe92b.txt.
#> [2026-09-08 16:22:48] - Log file created

logMessage("Starting analysis")
#> [2026-09-08 16:22:48] - Starting analysis
1 + 1
#> [1] 2
logMessage("Analysis finished")
#> [2026-09-08 16:22:48] - Analysis finished

x <- c("a", "b", "c")
for (i in seq_along(x)) {
  logMessage("{x[i]}")
}
#> [2026-09-08 16:22:48] - a
#> [2026-09-08 16:22:48] - b
#> [2026-09-08 16:22:48] - c

res <- summariseLogFile()
#> [2026-09-08 16:22:48] - Exporting log file

glimpse(res)
#> Rows: 13
#> Columns: 13
#> $ result_id        <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
#> $ cdm_name         <chr> "unknown", "unknown", "unknown", "unknown", "unknown"…
#> $ group_name       <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ group_level      <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ strata_name      <chr> "log_id", "log_id", "log_id", "log_id", "log_id", "lo…
#> $ strata_level     <chr> "1", "1", "2", "2", "3", "3", "4", "4", "5", "5", "6"…
#> $ variable_name    <chr> "Log file created", "Log file created", "Starting ana…
#> $ variable_level   <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA
#> $ estimate_name    <chr> "date_time", "elapsed_time", "date_time", "elapsed_ti…
#> $ estimate_type    <chr> "character", "integer", "character", "integer", "char…
#> $ estimate_value   <chr> "2026-09-08 16:22:48", "0", "2026-09-08 16:22:48", "0…
#> $ additional_name  <chr> "overall", "overall", "overall", "overall", "overall"…
#> $ additional_level <chr> "overall", "overall", "overall", "overall", "overall"…

tidy(res)
#> # A tibble: 7 × 6
#>   cdm_name log_id variable_name      variable_level date_time       elapsed_time
#>   <chr>    <chr>  <chr>              <chr>          <chr>                  <int>
#> 1 unknown  1      Log file created   NA             2026-09-08 16:…            0
#> 2 unknown  2      Starting analysis  NA             2026-09-08 16:…            0
#> 3 unknown  3      Analysis finished  NA             2026-09-08 16:…            0
#> 4 unknown  4      a                  NA             2026-09-08 16:…            0
#> 5 unknown  5      b                  NA             2026-09-08 16:…            0
#> 6 unknown  6      c                  NA             2026-09-08 16:…            0
#> 7 unknown  7      Exporting log file NA             2026-09-08 16:…           NA
```
