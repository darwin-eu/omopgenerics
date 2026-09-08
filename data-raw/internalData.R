# Copyright 2022 DARWIN EU (C)
#
# This file is part of omopgenerics
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

library(dplyr)

supportedCdmVersions <- c("5.3", "5.4", "5.5")

fieldsTables <- supportedCdmVersions |>
  rlang::set_names() |>
  purrr::map(\(v) {
    # fields and type of tables
    fieldsCdmTables <- readr::read_csv(
      here::here("data-raw", paste0("OMOP_CDMv", v, "_Field_Level.csv")),
      show_col_types = FALSE
    ) |>
      select(
        "cdm_table_name" = "cdmTableName",
        "cdm_field_name" = "cdmFieldName",
        "is_required" = "isRequired",
        "cdm_datatype" = "cdmDatatype"
      )

    # cohorts
    fieldsCohorts <- tibble(
      cdm_table_name = "cohort",
      cdm_field_name = c(
        "cohort_definition_id", "subject_id", "cohort_start_date", "cohort_end_date"
      ),
      is_required = TRUE,
      cdm_datatype = c("integer", "integer", "date", "date")
    ) |>
      union_all(tibble(
        cdm_table_name = "cohort_set",
        cdm_field_name = c("cohort_definition_id", "cohort_name"),
        is_required = TRUE,
        cdm_datatype = c("integer", "varchar(255)")
      )) |>
      union_all(tibble(
        cdm_table_name = "cohort_attrition",
        cdm_field_name = c(
          "cohort_definition_id", "number_records", "number_subjects", "reason_id",
          "reason", "excluded_records", "excluded_subjects"
        ),
        is_required = TRUE,
        cdm_datatype = c(
          "integer", "integer", "integer", "integer", "varchar(255)", "integer",
          "integer"
        )
      )) |>
      union_all(tibble(
        cdm_table_name = "cohort_codelist",
        cdm_field_name = c(
          "cohort_definition_id", "codelist_name", "concept_id", "codelist_type"
        ),
        is_required = TRUE,
        cdm_datatype = c(
          "integer", "varchar(255)", "integer", "varchar(255)"
        )
      ))

    # achilles
    fieldsAchilles <- dplyr::tibble(
      cdm_table_name = "achilles_analysis",
      cdm_field_name = c(
        "analysis_id", "analysis_name", "stratum_1_name", "stratum_2_name",
        "stratum_3_name", "stratum_4_name", "stratum_5_name", "is_default",
        "category"
      ),
      is_required = TRUE,
      cdm_datatype = c("integer", rep("varchar(255)", 6), "logical", "varchar(255)")
    ) |>
      dplyr::union_all(dplyr::tibble(
        cdm_table_name = "achilles_results",
        cdm_field_name = c(
          "analysis_id", "stratum_1", "stratum_2", "stratum_3", "stratum_4",
          "stratum_5", "count_value"
        ),
        is_required = TRUE,
        cdm_datatype = c("integer", rep("varchar(255)", 5), "integer")
      )) |>
      dplyr::union_all(dplyr::tibble(
        cdm_table_name = "achilles_results_dist",
        cdm_field_name = c(
          "analysis_id", "stratum_1", "stratum_2", "stratum_3", "stratum_4",
          "stratum_5", "count_value", "min_value", "max_value", "avg_value",
          "stdev_value", "median_value", "p10_value", "p25_value", "p75_value",
          "p90_value"
        ),
        is_required = TRUE,
        cdm_datatype = c(
          "integer", rep("varchar(255)", 5), rep("integer", 3), rep("float", 7)
        )
      ))

    fieldsCdmTables |>
      dplyr::mutate(type = "cdm_table") |>
      dplyr::union_all(
        fieldsCohorts |>
          dplyr::mutate(type = "cohort")
      ) |>
      dplyr::union_all(
        fieldsAchilles |>
          dplyr::mutate(type = "achilles")
      )
  })

fieldsResults <- dplyr::tibble(
  result = "summarised_result",
  result_field_name = c(
    "result_id", "cdm_name",
    "group_name", "group_level",
    "strata_name", "strata_level",
    "variable_name", "variable_level",
    "estimate_name", "estimate_type", "estimate_value",
    "additional_name", "additional_level"
  ),
  is_required = TRUE,
  datatype = c("integer", rep("character", 12)),
  na_allowed = c(
    TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE,
    FALSE
  ),
  pair = c(
    rep(NA, 2), "name1", "level1", "name2", "level2", rep(NA, 5), "name3",
    "level3"
  )
) |>
  dplyr::union_all(dplyr::tibble(
    result = "compared_result",
    result_field_name = c(
      "result_id", "cdm_name",
      "group_name_reference", "group_level_reference",
      "strata_name_reference", "strata_level_reference",
      "group_name_comparator", "group_level_comparator",
      "strata_name_comparator", "strata_level_comparator",
      "variable_name", "variable_level",
      "estimate_name", "estimate_type", "estimate_value",
      "additional_name_reference", "additional_level_reference",
      "additional_name_comparator", "additional_level_comparator"
    ),
    is_required = TRUE,
    datatype = c("integer", rep("character", 18)),
    na_allowed = c(
      TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE,
      FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE
    ),
    pair = c(
      rep(NA, 2), "name1", "level1", "name2", "level2", "name3", "level3",
      "name4", "level4", rep(NA, 5), "name5", "level5", "name6", "level6"
    )
  )) |>
  dplyr::union_all(dplyr::tibble(
    result = "settings",
    result_field_name = c(
      "result_id", "result_type", "package_name", "package_version"
    ),
    is_required = TRUE,
    datatype = c("integer", rep("character", 3)),
    na_allowed = c(
      FALSE, FALSE, FALSE, FALSE
    ),
    pair = c(
      rep(NA, 4)
    )
  ))

groupCount <- c("number subjects", "number records")

fieldTablesColumns <- dplyr::tribble(
  ~"table_name", ~"start_date", ~"end_date", ~"standard_concept", ~"source_concept", ~"type_concept", ~"unique_id", ~"domain_id", ~"person_id",
  "observation_period", "observation_period_start_date", "observation_period_end_date", NA, NA, "period_type_concept_id", "observation_period_id", NA, "person_id",
  "visit_occurrence", "visit_start_date", "visit_end_date", "visit_concept_id", "visit_source_concept_id", "visit_type_concept_id", "visit_occurrence_id", "visit", "person_id",
  "visit_detail", "visit_detail_start_date", "visit_detail_end_date", "visit_detail_concept_id", "visit_detail_source_concept_id", "visit_detail_type_concept_id", "visit_detail_id", "visit", "person_id",
  "specimen", "specimen_date", "specimen_date", "specimen_concept_id", NA, "specimen_type_concept_id", "specimen_id", "specimen", "person_id",
  "note", "note_date", "note_date", NA, NA, "note_type_concept_id", "note_id", NA, "person_id",
  "condition_occurrence", "condition_start_date", "condition_end_date", "condition_concept_id", "condition_source_concept_id", "condition_type_concept_id", "condition_occurrence_id", "condition", "person_id",
  "drug_exposure", "drug_exposure_start_date", "drug_exposure_end_date", "drug_concept_id", "drug_source_concept_id", "drug_type_concept_id", "drug_exposure_id", "drug", "person_id",
  "procedure_occurrence", "procedure_date", "procedure_date", "procedure_concept_id", "procedure_source_concept_id", "procedure_type_concept_id", "procedure_occurrence_id", "procedure", "person_id",
  "device_exposure", "device_exposure_start_date", "device_exposure_end_date", "device_concept_id", "device_source_concept_id", "device_type_concept_id", "device_exposure_id", "device", "person_id",
  "measurement", "measurement_date", "measurement_date", "measurement_concept_id", "measurement_source_concept_id", "measurement_type_concept_id", "measurement_id", "measurement", "person_id",
  "observation", "observation_date", "observation_date", "observation_concept_id", "observation_source_concept_id", "observation_type_concept_id", "observation_id", "observation", "person_id",
  "death", "death_date", "death_date", "cause_concept_id", "cause_source_concept_id", "death_type_concept_id", "person_id", NA, "person_id",
  "condition_era", "condition_era_start_date", "condition_era_end_date", "condition_concept_id", NA, NA, "condition_era_id", "condition", "person_id",
  "drug_era", "drug_era_start_date", "drug_era_end_date", "drug_concept_id", NA, NA, "drug_era_id", "drug", "person_id",
  "dose_era", "dose_era_start_date", "dose_era_end_date", "drug_concept_id", NA, NA, "dose_era_id", "drug", "person_id",
  "payer_plan_period", "payer_plan_period_start_date", "payer_plan_period_end_date", "payer_concept_id", "payer_source_concept_id", NA, "payer_plan_period_id", NA, "person_id"
)

# change: new/eliminated/changed
fieldsChanges <- list(
  "same" = dplyr::tibble(field = character(), change = character()),
  "5.3 to 5.4" = dplyr::tribble(
    ~field, ~change,
    "attribute_definition-attribute_definition_id", "eliminated table",
    "attribute_definition-attribute_name", "eliminated table",
    "attribute_definition-attribute_description", "eliminated table",
    "attribute_definition-attribute_type_concept_id", "eliminated table",
    "attribute_definition-attribute_syntax", "eliminated table",
    "visit_occurrence-admitted_from_concept_id", "changed from: visit_occurrence-admitting_source_concept_id",
    "visit_occurrence-admitted_from_source_value", "changed from: visit_occurrence-admitting_source_value",
    "visit_occurrence-discharged_to_concept_id", "changed from: visit_occurrence-discharge_to_concept_id",
    "visit_occurrence-discharged_to_source_value", "changed from: visit_occurrence-discharge_to_source_value",
    "visit_detail-admitted_from_concept_id", "changed from: visit_detail-admitting_source_concept_id",
    "visit_detail-admitted_from_source_value", "changed from: visit_detail-admitting_source_value",
    "visit_detail-discharged_to_source_value", "changed from: visit_detail-discharge_to_source_value",
    "visit_detail-discharged_to_concept_id", "changed from: visit_detail-discharge_to_concept_id",
    "visit_detail-parent_visit_detail_id", "changed from: visit_detail-visit_detail_parent_id",
    "device_exposure-unique_device_id", "changed from: device_exposure-unique_device_id",
    "cdm_source-cdm_source_abbreviation", "changed from: cdm_source-cdm_source_abbreviation",
    "cdm_source-cdm_holder", "changed from: cdm_source-cdm_holder",
    "cdm_source-source_release_date", "changed from: cdm_source-source_release_date",
    "cdm_source-cdm_release_date", "changed from: cdm_source-cdm_release_date",
    "cdm_source-vocabulary_version", "changed from: cdm_source-vocabulary_version",
    "vocabulary-vocabulary_reference", "changed from: vocabulary-vocabulary_reference",
    "procedure_occurrence-procedure_end_date", "new field",
    "procedure_occurrence-procedure_end_datetime", "new field",
    "device_exposure-production_id", "new field",
    "device_exposure-unit_concept_id", "new field",
    "device_exposure-unit_source_value", "new field",
    "device_exposure-unit_source_concept_id", "new field",
    "measurement-unit_source_concept_id", "new field",
    "measurement-measurement_event_id", "new field",
    "measurement-meas_event_field_concept_id", "new field",
    "observation-value_source_value", "new field",
    "observation-observation_event_id", "new field",
    "observation-obs_event_field_concept_id", "new field",
    "note-note_event_id", "new field",
    "note-note_event_field_concept_id", "new field",
    "location-country_concept_id", "new field",
    "location-country_source_value", "new field",
    "location-latitude", "new field",
    "location-longitude", "new field",
    "episode-episode_id", "new table",
    "episode-person_id", "new table",
    "episode-episode_concept_id", "new table",
    "episode-episode_start_date", "new table",
    "episode-episode_start_datetime", "new table",
    "episode-episode_end_date", "new table",
    "episode-episode_end_datetime", "new table",
    "episode-episode_parent_id", "new table",
    "episode-episode_number", "new table",
    "episode-episode_object_concept_id", "new table",
    "episode-episode_type_concept_id", "new table",
    "episode-episode_source_value", "new table",
    "episode-episode_source_concept_id", "new table",
    "episode_event-episode_id", "new table",
    "episode_event-event_id", "new table",
    "episode_event-episode_event_field_concept_id", "new table",
    "metadata-metadata_id", "new field",
    "metadata-value_as_number", "new field",
    "cdm_source-cdm_version_concept_id", "new field",
    "cohort-cohort_definition_id", "new table",
    "cohort-subject_id", "new table",
    "cohort-cohort_start_date", "new table",
    "cohort-cohort_end_date", "new table"
  ),
  "5.4 to 5.5" = dplyr::tribble(
    ~field, ~change,
    "measurement-value_as_source_concept_id", "new field",
    "observation-value_as_date", "new field",
    "observation-unit_source_concept_id", "new field",
    "observation-value_as_source_concept_id", "new field",
    "specimen-visit_occurrence_id", "new field",
    "specimen-visit_detail_id", "new field",
    "cdm_source-cdm_release_identifier", "new field",
    "pack_content-pack_concept_id", "new table",
    "pack_content-drug_concept_id", "new table",
    "pack_content-amount", "new table",
    "pack_content-box_size", "new table",
    "concept_metadata-concept_id", "new table",
    "concept_metadata-concept_category", "new table",
    "concept_metadata-reuse_status", "new table",
    "concept_relationship_metadata-concept_id_1", "new table",
    "concept_relationship_metadata-concept_id_2", "new table",
    "concept_relationship_metadata-relationship_id", "new table",
    "concept_relationship_metadata-relationship_predicate_id", "new table",
    "concept_relationship_metadata-relationship_group", "new table",
    "concept_relationship_metadata-mapping_source", "new table",
    "concept_relationship_metadata-confidence", "new table",
    "concept_relationship_metadata-mapping_tool", "new table",
    "concept_relationship_metadata-mapper", "new table",
    "concept_relationship_metadata-reviewer", "new table"
  )
)

fieldsChanges[["5.3 to 5.5"]] <- dplyr::bind_rows(
  fieldsChanges[["5.3 to 5.4"]], fieldsChanges[["5.4 to 5.5"]]
)

ogDateFormat <- "%Y-%m-%d"

supportedCdmVersionsOptions <- paste0("\"", supportedCdmVersions, "\"")
n <- length(supportedCdmVersionsOptions)
supportedCdmVersionsOptions <- paste0(
  paste0(supportedCdmVersionsOptions[1:(n - 1)], collapse = ", "),
  ", or ",
  supportedCdmVersionsOptions[n]
)

usethis::use_data(
  fieldsTables, fieldsResults, groupCount, fieldTablesColumns,
  fieldsChanges, ogDateFormat, supportedCdmVersionsOptions,
  internal = TRUE, overwrite = TRUE
)

usethis::use_data(supportedCdmVersions, internal = FALSE, overwrite = TRUE)
