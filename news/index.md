# Changelog

## omopgenerics 1.3.3

CRAN release: 2025-11-11

- add unique argument in assertLogical by
  [@catalamarti](https://github.com/catalamarti) in
  [\#782](https://github.com/darwin-eu/omopgenerics/issues/782)
- Fix non UTF-8 issues (any collected character non UTF-8 is eliminated)
  by [@catalamarti](https://github.com/catalamarti) in
  [\#778](https://github.com/darwin-eu/omopgenerics/issues/778)
- concept set to also import codelists by
  [@catalamarti](https://github.com/catalamarti) in
  [\#787](https://github.com/darwin-eu/omopgenerics/issues/787)
- logging explain is now TRUE/FALSE option to add in the same log file
  by [@catalamarti](https://github.com/catalamarti) in
  [\#785](https://github.com/darwin-eu/omopgenerics/issues/785)

## omopgenerics 1.3.2

CRAN release: 2025-10-13

- Fix typo in compute timing by
  [@edward-burn](https://github.com/edward-burn) in
  [\#763](https://github.com/darwin-eu/omopgenerics/issues/763)
- Add stable badge by [@catalamarti](https://github.com/catalamarti) in
  [\#769](https://github.com/darwin-eu/omopgenerics/issues/769)
- Allow to extract all codelists of a cohort with
  [`cohortCodelist()`](https://darwin-eu.github.io/omopgenerics/reference/cohortCodelist.md)
  by [@catalamarti](https://github.com/catalamarti) in
  [\#770](https://github.com/darwin-eu/omopgenerics/issues/770)
- Export sql and explain sql can be added to the result object by
  [@catalamarti](https://github.com/catalamarti) in
  [\#765](https://github.com/darwin-eu/omopgenerics/issues/765)
- Create
  [`as_tibble()`](https://tibble.tidyverse.org/reference/as_tibble.html)
  method for `concept_set_expression` by
  [@catalamarti](https://github.com/catalamarti) in
  [\#774](https://github.com/darwin-eu/omopgenerics/issues/774)
- [`newConceptSetExpression()`](https://darwin-eu.github.io/omopgenerics/reference/newConceptSetExpression.md)
  accepts `codelists` as inputs by
  [@catalamarti](https://github.com/catalamarti) in
  [\#773](https://github.com/darwin-eu/omopgenerics/issues/773)
- [`exportConceptSetExpression()`](https://darwin-eu.github.io/omopgenerics/reference/exportConceptSetExpression.md)
  exports `codelists` as `concept_set_expression` by
  [@catalamarti](https://github.com/catalamarti) in
  [\#773](https://github.com/darwin-eu/omopgenerics/issues/773)

## omopgenerics 1.3.1

CRAN release: 2025-09-18

- The time a query takes to copute is included in log file by
  [@edward-burn](https://github.com/edward-burn) in
  [\#737](https://github.com/darwin-eu/omopgenerics/issues/737)
- Create emptyConceptSetExpression function by
  [@edward-burn](https://github.com/edward-burn)
  [\#735](https://github.com/darwin-eu/omopgenerics/issues/735)
- Empty codelist has class codelist by
  [@edward-burn](https://github.com/edward-burn) in
  [\#734](https://github.com/darwin-eu/omopgenerics/issues/734)
- Correct typo for condition_era_id by
  [@catalamarti](https://github.com/catalamarti) in
  [\#727](https://github.com/darwin-eu/omopgenerics/issues/727)
- Add … argument to insertTable by
  [@catalamarti](https://github.com/catalamarti) in
  [\#725](https://github.com/darwin-eu/omopgenerics/issues/725)
- observation_period and person are no longer required in the cdm object
  [@catalamarti](https://github.com/catalamarti)
  [\#746](https://github.com/darwin-eu/omopgenerics/issues/746)
- Create function
  [`omopDataFolder()`](https://darwin-eu.github.io/omopgenerics/reference/omopDataFolder.md)
  for the management of OMOP related data
  [@catalamarti](https://github.com/catalamarti)
  [\#747](https://github.com/darwin-eu/omopgenerics/issues/747)
- Remove `tictoc` from suggests and use base R by
  [@catalamarti](https://github.com/catalamarti)
  [\#748](https://github.com/darwin-eu/omopgenerics/issues/748)
- Support end and start date for table payer_plan_period by
  [@catalamarti](https://github.com/catalamarti)
  [\#749](https://github.com/darwin-eu/omopgenerics/issues/749)
- validate cohortId in recordCohortAttrition by
  [@catalamarti](https://github.com/catalamarti)
  [\#750](https://github.com/darwin-eu/omopgenerics/issues/750)
- Add separate vignette for suppression by
  [@catalamarti](https://github.com/catalamarti)
  [\#751](https://github.com/darwin-eu/omopgenerics/issues/751)
- Depend on dbplyr 2.5.1 to be able to use the new translations of clock
  by [@catalamarti](https://github.com/catalamarti)
  [\#754](https://github.com/darwin-eu/omopgenerics/issues/754)
- Add methods to support local datasets by
  [@catalamarti](https://github.com/catalamarti) in
  [\#757](https://github.com/darwin-eu/omopgenerics/issues/757)
- Cast columns for local cdms by
  [@catalamarti](https://github.com/catalamarti)
  [\#758](https://github.com/darwin-eu/omopgenerics/issues/758)

## omopgenerics 1.3.0

CRAN release: 2025-07-15

- write method fro summary.cdm_source by
  [@catalamarti](https://github.com/catalamarti) in
  [\#719](https://github.com/darwin-eu/omopgenerics/issues/719)
  [\#720](https://github.com/darwin-eu/omopgenerics/issues/720)
- Add query id in logging files by
  [@catalamarti](https://github.com/catalamarti) in
  [\#716](https://github.com/darwin-eu/omopgenerics/issues/716)
- Expanding omopgenerics vignette by
  [@catalamarti](https://github.com/catalamarti) in
  [\#721](https://github.com/darwin-eu/omopgenerics/issues/721)
- Indexes experimental functions by
  [@catalamarti](https://github.com/catalamarti) in
  [\#722](https://github.com/darwin-eu/omopgenerics/issues/722)
  [\#723](https://github.com/darwin-eu/omopgenerics/issues/723)
  [\#724](https://github.com/darwin-eu/omopgenerics/issues/724)

## omopgenerics 1.2.0

CRAN release: 2025-05-19

- Remove NA in estimates in transformToSummarisedResult by
  [@catalamarti](https://github.com/catalamarti) in
  [\#702](https://github.com/darwin-eu/omopgenerics/issues/702)
- Create logging functions by
  [@catalamarti](https://github.com/catalamarti) in
  [\#700](https://github.com/darwin-eu/omopgenerics/issues/700)
- Allow strata to be a character by
  [@catalamarti](https://github.com/catalamarti) in
  [\#703](https://github.com/darwin-eu/omopgenerics/issues/703)
- Remove settings that are NA after filterSettings by
  [@catalamarti](https://github.com/catalamarti) in
  [\#704](https://github.com/darwin-eu/omopgenerics/issues/704)
- `validateWindowArgument` force snake_case names by
  [@catalamarti](https://github.com/catalamarti) in
  [\#711](https://github.com/darwin-eu/omopgenerics/issues/711)
- Keep cohort_table class after collect by
  [@catalamarti](https://github.com/catalamarti) in
  [\#710](https://github.com/darwin-eu/omopgenerics/issues/710)
- [`dplyr::as_tibble`](https://tibble.tidyverse.org/reference/as_tibble.html)
  for codelist by [@catalamarti](https://github.com/catalamarti) in
  [\#712](https://github.com/darwin-eu/omopgenerics/issues/712)
- `type` -\> `codelist_type` by
  [@catalamarti](https://github.com/catalamarti) in
  [\#709](https://github.com/darwin-eu/omopgenerics/issues/709)

## omopgenerics 1.1.1

CRAN release: 2025-03-16

- more general validation for cohorts by
  [@edward-burn](https://github.com/edward-burn) in
  [\#692](https://github.com/darwin-eu/omopgenerics/issues/692)
- change `grepl` to
  [`stringr::str_detect`](https://stringr.tidyverse.org/reference/str_detect.html)
  by [@catalamarti](https://github.com/catalamarti) in
  [\#689](https://github.com/darwin-eu/omopgenerics/issues/689)
- allow
  [`readr::guess_encoding`](https://readr.tidyverse.org/reference/encoding.html)
  to fail and default configuration by
  [@catalamarti](https://github.com/catalamarti) in
  [\#685](https://github.com/darwin-eu/omopgenerics/issues/685)
- keep codelist class when subsetting by
  [@catalamarti](https://github.com/catalamarti) in
  [\#693](https://github.com/darwin-eu/omopgenerics/issues/693)
- export summarised_results always as utf8 by
  [@catalamarti](https://github.com/catalamarti) in
  [\#690](https://github.com/darwin-eu/omopgenerics/issues/690)
- add option checkPermanentTable to `validateCohortArgument` by
  [@catalamarti](https://github.com/catalamarti) in
  [\#694](https://github.com/darwin-eu/omopgenerics/issues/694)

## omopgenerics 1.1.0

CRAN release: 2025-02-25

- more general cdm validation checks by
  [@edward-burn](https://github.com/edward-burn) in
  [\#674](https://github.com/darwin-eu/omopgenerics/issues/674)
- typo in validateConceptSet by
  [@catalamarti](https://github.com/catalamarti) in
  [\#673](https://github.com/darwin-eu/omopgenerics/issues/673)
- fix call argument by [@catalamarti](https://github.com/catalamarti) in
  [\#677](https://github.com/darwin-eu/omopgenerics/issues/677)
- fix tempdir(“…”) by [@catalamarti](https://github.com/catalamarti) in
  [\#679](https://github.com/darwin-eu/omopgenerics/issues/679)
- new function transformToSummarisedResult by
  [@catalamarti](https://github.com/catalamarti) in
  [\#676](https://github.com/darwin-eu/omopgenerics/issues/676)

## omopgenerics 1.0.0

CRAN release: 2025-02-14

- Stable release of the package.
- Added a `NEWS.md` file to track changes to the package.
