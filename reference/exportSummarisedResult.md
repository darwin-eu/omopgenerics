# Export a summarised_result object to a CSV file.

Export a summarised_result object to a CSV file.

## Usage

``` r
exportSummarisedResult(
  ...,
  minCellCount = 5,
  fileName = "results_{cdm_name}_{date}.csv",
  path = getwd(),
  logFile = getOption("omopgenerics.logFile"),
  logSqlPath = getOption("omopgenerics.log_sql_path"),
  logExplainPath = lifecycle::deprecated()
)
```

## Arguments

- ...:

  A set of summarised_result objects.

- minCellCount:

  Minimum count for suppression purposes.

- fileName:

  Name of the file that will be created. Use {cdm_name} to refer to the
  cdmName of the objects and {date} to add the export date.

- path:

  Path where the CSV file should be created. It is ignored if fileName
  is a full file name with a path included.

- logFile:

  Path to the log file to export.

- logSqlPath:

  Path to the folder that contains the sql logs to export.

- logExplainPath:

  deprecated.
