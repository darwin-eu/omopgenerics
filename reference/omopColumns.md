# Required columns that the standard tables in the OMOP Common Data Model must have.

Required columns that the standard tables in the OMOP Common Data Model
must have.

## Usage

``` r
omopColumns(
  table,
  field = NULL,
  version = "5.3",
  onlyRequired = lifecycle::deprecated()
)
```

## Arguments

- table:

  Table to see required columns.

- field:

  Name of the specific field.

- version:

  Version of the OMOP Common Data Model.

- onlyRequired:

  deprecated

## Value

Character vector with the column names

## Examples

``` r
library(omopgenerics)

omopColumns("person")
#>  [1] "person_id"                   "gender_concept_id"          
#>  [3] "year_of_birth"               "month_of_birth"             
#>  [5] "day_of_birth"                "birth_datetime"             
#>  [7] "race_concept_id"             "ethnicity_concept_id"       
#>  [9] "location_id"                 "provider_id"                
#> [11] "care_site_id"                "person_source_value"        
#> [13] "gender_source_value"         "gender_source_concept_id"   
#> [15] "race_source_value"           "race_source_concept_id"     
#> [17] "ethnicity_source_value"      "ethnicity_source_concept_id"
```
