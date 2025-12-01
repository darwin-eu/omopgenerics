# Check whether a cohort table satisfies requirements

**\[deprecated\]**

## Usage

``` r
checkCohortRequirements(
  cohort,
  checkEndAfterStart = TRUE,
  checkOverlappingEntries = TRUE,
  checkMissingValues = TRUE,
  checkInObservation = TRUE,
  type = "error",
  call = parent.frame()
)
```

## Arguments

- cohort:

  `cohort_table` object.

- checkEndAfterStart:

  If TRUE a check that all cohort end dates come on or after cohort
  start date will be performed.

- checkOverlappingEntries:

  If TRUE a check that no individuals have overlapping cohort entries
  will be performed.

- checkMissingValues:

  If TRUE a check that there are no missing values in required fields
  will be performed.

- checkInObservation:

  If TRUE a check that cohort entries are within the individuals
  observation periods will be performed.

- type:

  Can be either "error" or "warning". If "error" any check failure will
  result in an error, whereas if "warning" any check failure will result
  in a warning.

- call:

  The call for which to return the error message.

## Value

An error will be returned if any of the selected checks fail.
