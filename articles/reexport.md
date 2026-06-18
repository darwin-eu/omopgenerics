# Re-exporting functions from omopgenerics

## Introduction

**omopgenerics** is a developer-focused package that is meant to be
mostly invisible to users. This means that the typical user of the
omopverse packages should not need to import it directly. Functions that
users need should be re-exported by other packages.

## Methods

If a package defines an implementation for a desired method (attrition,
settings, …), this function should be re-exported there.

## CDM reference

If a package has a function to create a `cdm_reference` object, this
package should re-export several functions.

1.  To access the `cdm_reference` attributes:

- [`cdmSource()`](https://darwin-eu.github.io/omopgenerics/reference/cdmSource.md)

- [`cdmVersion()`](https://darwin-eu.github.io/omopgenerics/reference/cdmVersion.md)

- [`cdmName()`](https://darwin-eu.github.io/omopgenerics/reference/cdmName.md)

2.  To access the `cdm_table` attributes:

- [`tableSource()`](https://darwin-eu.github.io/omopgenerics/reference/tableSource.md)

- [`tableName()`](https://darwin-eu.github.io/omopgenerics/reference/tableName.md)

- [`cdmReference()`](https://darwin-eu.github.io/omopgenerics/reference/cdmReference.md)

3.  To insert and drop tables using the cdm object:

- [`insertTable()`](https://darwin-eu.github.io/omopgenerics/reference/insertTable.md)

- [`dropSourceTable()`](https://darwin-eu.github.io/omopgenerics/reference/dropSourceTable.md)

- `listSourceTable()`

- [`readSourceTable()`](https://darwin-eu.github.io/omopgenerics/reference/readSourceTable.md)

4.  Helpers to create appropriate cdm tables:

- [`omopColumns()`](https://darwin-eu.github.io/omopgenerics/reference/omopColumns.md)

- [`omopTables()`](https://darwin-eu.github.io/omopgenerics/reference/omopTables.md)

- [`cohortColumns()`](https://darwin-eu.github.io/omopgenerics/reference/cohortColumns.md)

- [`cohortTables()`](https://darwin-eu.github.io/omopgenerics/reference/cohortTables.md)

- [`achillesColumns()`](https://darwin-eu.github.io/omopgenerics/reference/achillesColumns.md)

- [`achillesTables()`](https://darwin-eu.github.io/omopgenerics/reference/achillesTables.md)

## Cohorts

If a package has a function to create a `cohort_table` object, this
package should re-export the following functions:

- [`settings()`](https://darwin-eu.github.io/omopgenerics/reference/settings.md)

- [`attrition()`](https://darwin-eu.github.io/omopgenerics/reference/attrition.md)

- [`cohortCount()`](https://darwin-eu.github.io/omopgenerics/reference/cohortCount.md)

- [`cohortCodelist()`](https://darwin-eu.github.io/omopgenerics/reference/cohortCodelist.md)

- [`bind()`](https://darwin-eu.github.io/omopgenerics/reference/bind.md)

## Summarised result

If a package has a function to create a `summarised_result` object, this
package should re-export the following functions:

- [`suppress()`](https://darwin-eu.github.io/omopgenerics/reference/suppress.md)

- [`bind()`](https://darwin-eu.github.io/omopgenerics/reference/bind.md)

- [`settings()`](https://darwin-eu.github.io/omopgenerics/reference/settings.md)

- [`exportSummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/exportSummarisedResult.md)

- [`importSummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/importSummarisedResult.md)

- [`groupColumns()`](https://darwin-eu.github.io/omopgenerics/reference/groupColumns.md)

- [`strataColumns()`](https://darwin-eu.github.io/omopgenerics/reference/strataColumns.md)

- [`additionalColumns()`](https://darwin-eu.github.io/omopgenerics/reference/additionalColumns.md)
