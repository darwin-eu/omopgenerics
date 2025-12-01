# Standard tables that a cdm reference can contain in the OMOP Common Data Model.

Standard tables that a cdm reference can contain in the OMOP Common Data
Model.

## Usage

``` r
omopTables(version = "5.3")
```

## Arguments

- version:

  Version of the OMOP Common Data Model.

## Value

Standard tables

## Examples

``` r
library(omopgenerics)

omopTables()
#>  [1] "person"                "observation_period"    "visit_occurrence"     
#>  [4] "visit_detail"          "condition_occurrence"  "drug_exposure"        
#>  [7] "procedure_occurrence"  "device_exposure"       "measurement"          
#> [10] "observation"           "death"                 "note"                 
#> [13] "note_nlp"              "specimen"              "fact_relationship"    
#> [16] "location"              "care_site"             "provider"             
#> [19] "payer_plan_period"     "cost"                  "drug_era"             
#> [22] "dose_era"              "condition_era"         "metadata"             
#> [25] "cdm_source"            "concept"               "vocabulary"           
#> [28] "domain"                "concept_class"         "concept_relationship" 
#> [31] "relationship"          "concept_synonym"       "concept_ancestor"     
#> [34] "source_to_concept_map" "drug_strength"         "cohort_definition"    
#> [37] "attribute_definition"  "concept_recommended"  
```
