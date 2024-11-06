#' Identify variables in group_name column
#'
#' @param result A tibble.
#'
#' @return Unique values of the group name column.
#' @description Identifies and returns the unique values in group_name column.
#'
#' @export
#'
#' @examples {
#' library(dplyr)
#' library(omopgenerics)
#'
#' x <- tibble(
#'   "result_id" = as.integer(c(1, 2)),
#'   "cdm_name" = c("cprd", "eunomia"),
#'   "group_name" = "sex",
#'   "group_level" = "male",
#'   "strata_name" = "sex",
#'   "strata_level" = "male",
#'   "variable_name" = "Age group",
#'   "variable_level" = "10 to 50",
#'   "estimate_name" = "count",
#'   "estimate_type" = "numeric",
#'   "estimate_value" = "5",
#'   "additional_name" = "overall",
#'   "additional_level" = "overall"
#' ) |>
#'   newSummarisedResult(settings = tibble(
#'     "result_id" = c(1, 2), "custom" = c("A", "B")
#'   ))
#'
#' x
#'
#' x |> groupColumns()
#' }
#'
groupColumns <- function(result) {
  getSRColumns(result = result, col = "group_name")
}

#' Identify variables in strata_name column
#'
#' @param result A tibble.
#'
#' @return Unique values of the strata name column.
#' @description Identifies and returns the unique values in strata_name column.
#'
#' @export
#'
#' @examples {
#' library(dplyr)
#' library(omopgenerics)
#'
#' x <- tibble(
#'   "result_id" = as.integer(c(1, 2)),
#'   "cdm_name" = c("cprd", "eunomia"),
#'   "group_name" = "sex",
#'   "group_level" = "male",
#'   "strata_name" = "sex",
#'   "strata_level" = "male",
#'   "variable_name" = "Age group",
#'   "variable_level" = "10 to 50",
#'   "estimate_name" = "count",
#'   "estimate_type" = "numeric",
#'   "estimate_value" = "5",
#'   "additional_name" = "overall",
#'   "additional_level" = "overall"
#' ) |>
#'   newSummarisedResult(settings = tibble(
#'     "result_id" = c(1, 2), "custom" = c("A", "B")
#'   ))
#'
#' x
#'
#' x |> strataColumns()
#' }
#'
strataColumns <- function(result) {
  getSRColumns(result = result, col = "strata_name")
}

#' Identify variables in additional_name column
#'
#' @param result A tibble.
#'
#' @return Unique values of the additional name column.
#' @description Identifies and returns the unique values in additional_name
#' column.
#'
#' @export
#'
#' @examples {
#' library(dplyr)
#' library(omopgenerics)
#'
#' x <- tibble(
#'   "result_id" = as.integer(c(1, 2)),
#'   "cdm_name" = c("cprd", "eunomia"),
#'   "group_name" = "sex",
#'   "group_level" = "male",
#'   "strata_name" = "sex",
#'   "strata_level" = "male",
#'   "variable_name" = "Age group",
#'   "variable_level" = "10 to 50",
#'   "estimate_name" = "count",
#'   "estimate_type" = "numeric",
#'   "estimate_value" = "5",
#'   "additional_name" = "overall",
#'   "additional_level" = "overall"
#' ) |>
#'   newSummarisedResult(settings = tibble(
#'     "result_id" = c(1, 2), "custom" = c("A", "B")
#'   ))
#'
#' x
#'
#' x |> additionalColumns()
#' }
#'
additionalColumns <- function(result) {
  getSRColumns(result = result, col = "additional_name")
}

#' Identify settings columns of a `<summarised_result>`
#'
#' @param result A `<summarised_result>`.
#'
#' @return Vector with names of the settings columns
#' @description Identifies and returns the columns of the settings table
#' obtained by using `settings()` in a `<summarised_result>` object.
#'
#' @export
#'
#' @examples {
#' library(dplyr)
#' library(omopgenerics)
#'
#' x <- tibble(
#'   "result_id" = as.integer(c(1, 2)),
#'   "cdm_name" = c("cprd", "eunomia"),
#'   "group_name" = "sex",
#'   "group_level" = "male",
#'   "strata_name" = "sex",
#'   "strata_level" = "male",
#'   "variable_name" = "Age group",
#'   "variable_level" = "10 to 50",
#'   "estimate_name" = "count",
#'   "estimate_type" = "numeric",
#'   "estimate_value" = "5",
#'   "additional_name" = "overall",
#'   "additional_level" = "overall"
#' ) |>
#'   newSummarisedResult(settings = tibble(
#'     "result_id" = c(1, 2), "custom" = c("A", "B")
#'   ))
#'
#' x
#'
#' x |> settingsColumns()
#' }
settingsColumns <- function(result) {
  cols <- result |>
    settings() |>
    colnames()
  cols[cols != "result_id"]
}

#' Identify tidy columns of a `<summarised_result>`
#'
#' @param result A `<summarised_result>`.
#'
#' @return Table columns after applying `tidy()` function to a
#' `<summarised_result>`.
#'
#' @description Identifies and returns the columns that the tidy version of the
#' `<summarised_result>` will have.
#'
#' @export
#'
#' @examples {
#' library(dplyr)
#' library(omopgenerics)
#'
#' x <- tibble(
#'   "result_id" = as.integer(c(1, 2)),
#'   "cdm_name" = c("cprd", "eunomia"),
#'   "group_name" = "sex",
#'   "group_level" = "male",
#'   "strata_name" = "sex",
#'   "strata_level" = "male",
#'   "variable_name" = "Age group",
#'   "variable_level" = "10 to 50",
#'   "estimate_name" = "count",
#'   "estimate_type" = "numeric",
#'   "estimate_value" = "5",
#'   "additional_name" = "overall",
#'   "additional_level" = "overall"
#' ) |>
#'   newSummarisedResult(settings = tibble(
#'     "result_id" = c(1, 2), "custom" = c("A", "B")
#'   ))
#'
#' x
#'
#' x |> tidyColumns()
#' }
tidyColumns <- function(result) {
  omopgenerics::validateResultArguemnt(result)
  colsSet <- colnames(settings(result))
  c("cdm_name", groupColumns(result), strataColumns(result), "variable_name",
    "variable_level", unique(result$estimate_name), additionalColumns(result),
    colsSet[colsSet != "result_id"])
}

getSRColumns <- function(result, col) {
  # initial checks
  omopgenerics::assertTable(result, columns = col)
  omopgenerics::assertCharacter(col, length = 1)

  # extract columns
  x <- result |>
    dplyr::select(dplyr::all_of(col)) |>
    dplyr::distinct() |>
    dplyr::pull() |>
    lapply(strsplit, split = " &&& ") |>
    unlist() |>
    unique()

  # eliminate overall
  x <- x[x != "overall"]

  return(x)
}
