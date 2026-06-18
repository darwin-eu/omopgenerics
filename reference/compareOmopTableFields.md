# Compare the fields of two different OMOP CDM versions

Compare the fields of two different OMOP CDM versions

## Usage

``` r
compareOmopTableFields(
  cdmVersionReference = "5.3",
  cdmVersionComparator = "5.4"
)
```

## Arguments

- cdmVersionReference:

  An OMOP CDM version, it can either be "5.3" or "5.4".

- cdmVersionComparator:

  An OMOP CDM version, it can either be "5.3" or "5.4".

## Value

A tibble with two columns: `field` and `change`.

## Examples

``` r
library(omopgenerics)

compareOmopTableFields("5.3", "5.4")
#> Changes between cdm version: 5.3 and 5.4:
#> ✖ Eliminated tables:
#> • attribute_definition (`attribute_definition_id`, `attribute_name`,
#>   `attribute_description`, `attribute_type_concept_id`, `attribute_syntax`)
#> ✔ New tables:
#> • cohort (`cohort_definition_id`, `subject_id`, `cohort_start_date`,
#>   `cohort_end_date`)
#> • episode (`episode_id`, `person_id`, `episode_concept_id`,
#>   `episode_start_date`, `episode_start_datetime`, `episode_end_date`,
#>   `episode_end_datetime`, `episode_parent_id`, `episode_number`,
#>   `episode_object_concept_id`, `episode_type_concept_id`,
#>   `episode_source_value`, `episode_source_concept_id`)
#> • episode_event (`episode_id`, `event_id`, `episode_event_field_concept_id`)
#> ✔ New fields:
#> • cdm_source (`cdm_version_concept_id`)
#> • device_exposure (`production_id`, `unit_concept_id`, `unit_source_value`,
#>   `unit_source_concept_id`)
#> • location (`country_concept_id`, `country_source_value`, `latitude`,
#>   `longitude`)
#> • measurement (`unit_source_concept_id`, `measurement_event_id`,
#>   `meas_event_field_concept_id`)
#> • metadata (`metadata_id`, `value_as_number`)
#> • note (`note_event_id`, `note_event_field_concept_id`)
#> • observation (`value_source_value`, `observation_event_id`,
#>   `obs_event_field_concept_id`)
#> • procedure_occurrence (`procedure_end_date`, `procedure_end_datetime`)
#> ! Renamed fields:
#> • visit_detail (`admitted_from_concept_id` -> `admitting_source_concept_id`;
#>   `admitted_from_source_value` -> `admitting_source_value`;
#>   `discharged_to_source_value` -> `discharge_to_source_value`;
#>   `discharged_to_concept_id` -> `discharge_to_concept_id`;
#>   `parent_visit_detail_id` -> `visit_detail_parent_id`)
#> • visit_occurrence (`admitted_from_concept_id` ->
#>   `admitting_source_concept_id`; `admitted_from_source_value` ->
#>   `admitting_source_value`; `discharged_to_concept_id` ->
#>   `discharge_to_concept_id`; `discharged_to_source_value` ->
#>   `discharge_to_source_value`)
#> ! Specifications changed for fields:
#> • cdm_source (`cdm_source_abbreviation`, `cdm_holder`, `source_release_date`,
#>   `cdm_release_date`, `vocabulary_version`)
#> • device_exposure (`unique_device_id`)
#> • vocabulary (`vocabulary_reference`)
#> 
#> # A tibble: 62 × 2
#>    field                                          change                        
#>    <chr>                                          <chr>                         
#>  1 attribute_definition-attribute_definition_id   eliminated table              
#>  2 attribute_definition-attribute_name            eliminated table              
#>  3 attribute_definition-attribute_description     eliminated table              
#>  4 attribute_definition-attribute_type_concept_id eliminated table              
#>  5 attribute_definition-attribute_syntax          eliminated table              
#>  6 visit_occurrence-admitted_from_concept_id      changed from: visit_occurrenc…
#>  7 visit_occurrence-admitted_from_source_value    changed from: visit_occurrenc…
#>  8 visit_occurrence-discharged_to_concept_id      changed from: visit_occurrenc…
#>  9 visit_occurrence-discharged_to_source_value    changed from: visit_occurrenc…
#> 10 visit_detail-admitted_from_concept_id          changed from: visit_detail-ad…
#> # ℹ 52 more rows
```
