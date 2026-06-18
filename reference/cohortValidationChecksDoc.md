# Helper for consistent documentation of cohort validation checks.

Helper for consistent documentation of cohort validation checks.

## Arguments

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
