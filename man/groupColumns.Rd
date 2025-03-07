% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/columns.R
\name{groupColumns}
\alias{groupColumns}
\title{Identify variables in group_name column}
\usage{
groupColumns(result)
}
\arguments{
\item{result}{A tibble.}
}
\value{
Unique values of the group name column.
}
\description{
Identifies and returns the unique values in group_name column.
}
\examples{
{
  library(dplyr)
  library(omopgenerics)

  x <- tibble(
    "result_id" = as.integer(c(1, 2)),
    "cdm_name" = c("cprd", "eunomia"),
    "group_name" = "cohort",
    "group_level" = "my_cohort",
    "strata_name" = "sex",
    "strata_level" = "male",
    "variable_name" = "Age group",
    "variable_level" = "10 to 50",
    "estimate_name" = "count",
    "estimate_type" = "numeric",
    "estimate_value" = "5",
    "additional_name" = "overall",
    "additional_level" = "overall"
  ) |>
    newSummarisedResult(settings = tibble(
      "result_id" = c(1, 2), "custom" = c("A", "B")
    ))

  x

  x |> groupColumns()
}

}
