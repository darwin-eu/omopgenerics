# Create a new `code_search` object

**\[experimental\]**

## Usage

``` r
newCodeSearch(codes, searchStrategy)
```

## Arguments

- codes:

  A tibble with concept ids. It must contain "concept_id", "found_from",
  "concept_name", "vocabulary_version", "domain_id", "vocabulary_id",
  "concept_class_id", "standard_concept", "concept_code",
  "valid_start_date", "valid_end_date" and "invalid_reason" as columns.

- searchStrategy:

  A tibble with the search strategy used to derive the codes. It must
  contain "strategy_id", "strategy_name" and "strategy_value" as
  columns.

## Value

A `code_search` object.
