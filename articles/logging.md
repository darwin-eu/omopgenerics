# Logging with omopgenerics

## Logging

Logging is a common practice in studies, especially when sharing code.
Logging can be useful for checking timings or recording error messages.
There are multiple R packages that allow you to record these log
messages. For example, the `logger` package is quite useful.

### Logging with omopgenerics

`omopgenerics` does not aim to replace any of these packages; it just
provides simple functionality to log messages. In the future, we might
consider building this on top of one of the existing logging packages,
but for the moment we have these three simple functions:

- [`createLogFile()`](https://darwin-eu.github.io/omopgenerics/reference/createLogFile.md)
  creates the log file.
- [`logMessage()`](https://darwin-eu.github.io/omopgenerics/reference/logMessage.md)
  records messages in the log file. These messages will also be
  displayed in the console. If `logFile` does not exist, the message is
  only displayed in the console.
- [`summariseLogFile()`](https://darwin-eu.github.io/omopgenerics/reference/summariseLogFile.md)
  reads the log file and formats it into a `summarised_result` object.

### Example

Let’s see a simple example of logging with omopgenerics:

``` r

library(omopgenerics, warn.conflicts = FALSE)

# create the log file
createLogFile(logFile = tempfile(pattern = "log_{date}_{time}"))
#> ℹ Creating log file: /tmp/RtmpjnAWdY/log_2026_09_08_16_23_2225bb7a759776.txt.
#> [2026-09-08 16:23:22] - Log file created

# study
logMessage("Generating random numbers")
#> [2026-09-08 16:23:22] - Generating random numbers
x <- runif(1e6)

logMessage("Calculating the sum")
#> [2026-09-08 16:23:23] - Calculating the sum
result <- sum(x)

# export logger to a `summarised_result`
log <- summariseLogFile()
#> [2026-09-08 16:23:23] - Exporting log file

# content of the log file
readLines(getOption("omopgenerics.logFile")) |>
  cat(sep = "\n")
#> [2026-09-08 16:23:22] - Log file created
#> [2026-09-08 16:23:22] - Generating random numbers
#> [2026-09-08 16:23:23] - Calculating the sum
#> [2026-09-08 16:23:23] - Exporting log file

# `summarised_result` object
log
#> # A tibble: 7 × 13
#>   result_id cdm_name group_name group_level strata_name strata_level
#>       <int> <chr>    <chr>      <chr>       <chr>       <chr>       
#> 1         1 unknown  overall    overall     log_id      1           
#> 2         1 unknown  overall    overall     log_id      1           
#> 3         1 unknown  overall    overall     log_id      2           
#> 4         1 unknown  overall    overall     log_id      2           
#> 5         1 unknown  overall    overall     log_id      3           
#> 6         1 unknown  overall    overall     log_id      3           
#> 7         1 unknown  overall    overall     log_id      4           
#> # ℹ 7 more variables: variable_name <chr>, variable_level <chr>,
#> #   estimate_name <chr>, estimate_type <chr>, estimate_value <chr>,
#> #   additional_name <chr>, additional_level <chr>

# `summarised_result` object settings
settings(log)
#> # A tibble: 1 × 8
#>   result_id result_type     package_name package_version group strata additional
#>       <int> <chr>           <chr>        <chr>           <chr> <chr>  <chr>     
#> 1         1 summarise_log_… omopgenerics 1.4.2           ""    log_id ""        
#> # ℹ 1 more variable: min_cell_count <chr>

# tidy version of the `summarised_result`
tidy(log)
#> # A tibble: 4 × 6
#>   cdm_name log_id variable_name            variable_level date_time elapsed_time
#>   <chr>    <chr>  <chr>                    <chr>          <chr>            <int>
#> 1 unknown  1      Log file created         NA             2026-09-…            0
#> 2 unknown  2      Generating random numbe… NA             2026-09-…            1
#> 3 unknown  3      Calculating the sum      NA             2026-09-…            0
#> 4 unknown  4      Exporting log file       NA             2026-09-…           NA
```

Note that if the `logFile` is not created, the
[`logMessage()`](https://darwin-eu.github.io/omopgenerics/reference/logMessage.md)
function only displays the message in the console.

### `exportSummarisedResult`

By default,
[`exportSummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/exportSummarisedResult.md)
exports the logger if there is one. See the example code:

``` r

library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)

# create the log file
createLogFile(logFile = tempfile(pattern = "log_{date}_{time}"))
#> ℹ Creating log file: /tmp/RtmpjnAWdY/log_2026_09_08_16_23_2325bb65cc9915.txt.
#> [2026-09-08 16:23:23] - Log file created

# start analysis
logMessage("Defining toy data")
#> [2026-09-08 16:23:23] - Defining toy data
n <- 1e5
x <- tibble(person_id = seq_len(n), age = rnorm(n = n, mean = 55, sd = 20))

logMessage("Summarise toy data")
#> [2026-09-08 16:23:23] - Summarise toy data
res <- x |>
  summarise(
    `number subjects_count` = n(),
    `age_mean` = mean(age),
    `age_sd` = sd(age),
    `age_median` = median(age),
    `age_q25` = quantile(age, 0.25),
    `age_q75` = quantile(age, 0.75)
  ) |>
  pivot_longer(
    cols = everything(), 
    names_to = c("variable_name", "estimate_name"), 
    names_sep = "_",
    values_to = "estimate_value"
  ) |>
  mutate(
    result_id = 1L,
    cdm_name = "mock data",
    variable_level = NA_character_,
    estimate_type = if_else(estimate_name == "count", "integer", "numeric"),
    estimate_value = as.character(estimate_value)
  ) |>
  uniteGroup() |>
  uniteStrata() |>
  uniteAdditional() |>
  newSummarisedResult()
#> `result_type`, `package_name`, and `package_version` added to
#> settings.

# res is a summarised_result object that we can export using `exportSummarisedResult()`
tempDir <- tempdir()
exportSummarisedResult(res, path = tempDir)
#> [2026-09-08 16:23:23] - Exporting log file
```

[`exportSummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/exportSummarisedResult.md)
also exported the log file. Let’s inspect it by importing the exported
`summarised_result` object:

``` r

result <- importSummarisedResult(tempDir)
#> Reading file: results_mock data_2026_09_08.csv.
#> Converting to summarised_result: results_mock data_2026_09_08.
```

We can see that the log file is exported by looking for
`result_type = "summarise_log_file"`:

``` r

result |>
  settings() |> 
  glimpse()
#> Rows: 2
#> Columns: 8
#> $ result_id       <int> 1, 2
#> $ result_type     <chr> "", "summarise_log_file"
#> $ package_name    <chr> "", "omopgenerics"
#> $ package_version <chr> "", "1.4.2"
#> $ group           <chr> "", ""
#> $ strata          <chr> "", "log_id"
#> $ additional      <chr> "", ""
#> $ min_cell_count  <chr> "5", "5"
```

The easiest way to explore the log is using the
[`tidy()`](https://generics.r-lib.org/reference/tidy.html) version:

``` r

result |>
  filterSettings(result_type == "summarise_log_file") |>
  tidy()
#> # A tibble: 4 × 6
#>   cdm_name  log_id variable_name      variable_level date_time      elapsed_time
#>   <chr>     <chr>  <chr>              <chr>          <chr>                 <int>
#> 1 mock data 1      Log file created   NA             2026-09-08 16…            0
#> 2 mock data 2      Defining toy data  NA             2026-09-08 16…            0
#> 3 mock data 3      Summarise toy data NA             2026-09-08 16…            0
#> 4 mock data 4      Exporting log file NA             2026-09-08 16…           NA
```
