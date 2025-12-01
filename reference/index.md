# Package index

### Methods

General methods deffined by omopgenerics

- [`attrition()`](https://darwin-eu.github.io/omopgenerics/reference/attrition.md)
  : Get attrition from an object.
- [`bind()`](https://darwin-eu.github.io/omopgenerics/reference/bind.md)
  : Bind two or more objects of the same class.
- [`settings()`](https://darwin-eu.github.io/omopgenerics/reference/settings.md)
  : Get settings from an object.
- [`suppress()`](https://darwin-eu.github.io/omopgenerics/reference/suppress.md)
  : Function to suppress counts in result objects

### Create new objects

To create new omopgenerics S3 classes objects

- [`newAchillesTable()`](https://darwin-eu.github.io/omopgenerics/reference/newAchillesTable.md)
  : Create an achilles table from a cdm_table.

- [`newCdmReference()`](https://darwin-eu.github.io/omopgenerics/reference/newCdmReference.md)
  :

  `cdm_reference` objects constructor

- [`newCdmSource()`](https://darwin-eu.github.io/omopgenerics/reference/newCdmSource.md)
  : Create a cdm source object.

- [`newCdmTable()`](https://darwin-eu.github.io/omopgenerics/reference/newCdmTable.md)
  : Create an cdm table.

- [`newCodelist()`](https://darwin-eu.github.io/omopgenerics/reference/newCodelist.md)
  : 'codelist' object constructor

- [`newCodelistWithDetails()`](https://darwin-eu.github.io/omopgenerics/reference/newCodelistWithDetails.md)
  : 'codelist' object constructor

- [`newCohortTable()`](https://darwin-eu.github.io/omopgenerics/reference/newCohortTable.md)
  :

  `cohort_table` objects constructor.

- [`newConceptSetExpression()`](https://darwin-eu.github.io/omopgenerics/reference/newConceptSetExpression.md)
  : 'concept_set_expression' object constructor

- [`newLocalSource()`](https://darwin-eu.github.io/omopgenerics/reference/newLocalSource.md)
  : A new local source for the cdm

- [`newOmopTable()`](https://darwin-eu.github.io/omopgenerics/reference/newOmopTable.md)
  : Create an omop table from a cdm table.

- [`newSummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/newSummarisedResult.md)
  : 'summarised_results' object constructor

### Creates empty objects

To create empty omopgenerics S3 classes objects

- [`emptyAchillesTable()`](https://darwin-eu.github.io/omopgenerics/reference/emptyAchillesTable.md)
  : Create an empty achilles table

- [`emptyCdmReference()`](https://darwin-eu.github.io/omopgenerics/reference/emptyCdmReference.md)
  : Create an empty cdm_reference

- [`emptyCodelist()`](https://darwin-eu.github.io/omopgenerics/reference/emptyCodelist.md)
  :

  Empty `codelist` object.

- [`emptyCodelistWithDetails()`](https://darwin-eu.github.io/omopgenerics/reference/emptyCodelistWithDetails.md)
  :

  Empty `codelist` object.

- [`emptyCohortTable()`](https://darwin-eu.github.io/omopgenerics/reference/emptyCohortTable.md)
  : Create an empty cohort_table object

- [`emptyConceptSetExpression()`](https://darwin-eu.github.io/omopgenerics/reference/emptyConceptSetExpression.md)
  :

  Empty `concept_set_expression` object.

- [`emptyOmopTable()`](https://darwin-eu.github.io/omopgenerics/reference/emptyOmopTable.md)
  : Create an empty omop table

- [`emptySummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/emptySummarisedResult.md)
  :

  Empty `summarised_result` object.

### cdm_reference utility functions

Utility functions for cdm_reference objects

- [`cdmClasses()`](https://darwin-eu.github.io/omopgenerics/reference/cdmClasses.md)
  : Separate the cdm tables in classes

- [`cdmDisconnect()`](https://darwin-eu.github.io/omopgenerics/reference/cdmDisconnect.md)
  : Disconnect from a cdm object.

- [`cdmFromTables()`](https://darwin-eu.github.io/omopgenerics/reference/cdmFromTables.md)
  : Create a cdm object from local tables

- [`cdmName()`](https://darwin-eu.github.io/omopgenerics/reference/cdmName.md)
  : Get the name of a cdm_reference associated object

- [`cdmReference()`](https://darwin-eu.github.io/omopgenerics/reference/cdmReference.md)
  :

  Get the `cdm_reference` of a `cdm_table`.

- [`cdmSelect()`](https://darwin-eu.github.io/omopgenerics/reference/cdmSelect.md)
  : Restrict the cdm object to a subset of tables.

- [`cdmSource()`](https://darwin-eu.github.io/omopgenerics/reference/cdmSource.md)
  : Get the cdmSource of an object.

- [`cdmSourceType()`](https://darwin-eu.github.io/omopgenerics/reference/cdmSourceType.md)
  **\[deprecated\]** : Get the source type of a cdm_reference object.

- [`cdmTableFromSource()`](https://darwin-eu.github.io/omopgenerics/reference/cdmTableFromSource.md)
  : This is an internal developer focused function that creates a
  cdm_table from a table that shares the source but it is not a
  cdm_table. Please use insertTable if you want to insert a table to a
  cdm_reference object.

- [`cdmVersion()`](https://darwin-eu.github.io/omopgenerics/reference/cdmVersion.md)
  : Get the version of an object.

- [`listSourceTables()`](https://darwin-eu.github.io/omopgenerics/reference/listSourceTables.md)
  : List tables that can be accessed though a cdm object.

- [`dropSourceTable()`](https://darwin-eu.github.io/omopgenerics/reference/dropSourceTable.md)
  : Drop a table from a cdm object.

- [`insertTable()`](https://darwin-eu.github.io/omopgenerics/reference/insertTable.md)
  : Insert a table to a cdm object.

- [`readSourceTable()`](https://darwin-eu.github.io/omopgenerics/reference/readSourceTable.md)
  : Read a table from the cdm_source and add it to to the cdm.

- [`insertCdmTo()`](https://darwin-eu.github.io/omopgenerics/reference/insertCdmTo.md)
  : Insert a cdm_reference object to a different source.

- [`getPersonIdentifier()`](https://darwin-eu.github.io/omopgenerics/reference/getPersonIdentifier.md)
  : Get the column name with the person identifier from a table (either
  subject_id or person_id), it will throw an error if it contains both
  or neither.

- [`` `$`( ``*`<cdm_reference>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/cash-.cdm_reference.md)
  : Subset a cdm reference object.

- [`` `$<-`( ``*`<cdm_reference>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/cash-set-.cdm_reference.md)
  : Assign an table to a cdm reference.

- [`collect(`*`<cdm_reference>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/collect.cdm_reference.md)
  : Retrieves the cdm reference into a local cdm.

- [`print(`*`<cdm_reference>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/print.cdm_reference.md)
  : Print a CDM reference object

- [`` `[[`( ``*`<cdm_reference>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/sub-sub-.cdm_reference.md)
  : Subset a cdm reference object.

- [`` `[[<-`( ``*`<cdm_reference>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/sub-subset-.cdm_reference.md)
  : Assign a table to a cdm reference.

- [`summary(`*`<cdm_reference>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/summary.cdm_reference.md)
  : Summary a cdm reference

- [`summary(`*`<cdm_source>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/summary.cdm_source.md)
  :

  Summarise a `cdm_source` object

### cdm_table utility functions

Utility functions for cdm_table objects

- [`tableName()`](https://darwin-eu.github.io/omopgenerics/reference/tableName.md)
  :

  Get the table name of a `cdm_table`.

- [`tableSource()`](https://darwin-eu.github.io/omopgenerics/reference/tableSource.md)
  :

  Get the table source of a `cdm_table`.

- [`numberRecords()`](https://darwin-eu.github.io/omopgenerics/reference/numberRecords.md)
  :

  Count the number of records that a `cdm_table` has.

- [`numberSubjects()`](https://darwin-eu.github.io/omopgenerics/reference/numberSubjects.md)
  :

  Count the number of subjects that a `cdm_table` has.

- [`compute(`*`<cdm_table>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/compute.cdm_table.md)
  : Store results in a table.

### omop_table utility functions

Utility functions for omop_table objects

- [`omopColumns()`](https://darwin-eu.github.io/omopgenerics/reference/omopColumns.md)
  : Required columns that the standard tables in the OMOP Common Data
  Model must have.
- [`omopDataFolder()`](https://darwin-eu.github.io/omopgenerics/reference/omopDataFolder.md)
  : Check or set the OMOP_DATA_FOLDER where the OMOP related data is
  stored.
- [`omopTableFields()`](https://darwin-eu.github.io/omopgenerics/reference/omopTableFields.md)
  : Return a table of omop cdm fields informations
- [`omopTables()`](https://darwin-eu.github.io/omopgenerics/reference/omopTables.md)
  : Standard tables that a cdm reference can contain in the OMOP Common
  Data Model.

### achilles_table utility functions

Utility functions for achilles_table objects

- [`achillesColumns()`](https://darwin-eu.github.io/omopgenerics/reference/achillesColumns.md)
  : Required columns for each of the achilles result tables
- [`achillesTables()`](https://darwin-eu.github.io/omopgenerics/reference/achillesTables.md)
  : Names of the tables that contain the results of achilles analyses

### cohort_table utility functions

Utility functions for cohort_table objects

- [`cohortCodelist()`](https://darwin-eu.github.io/omopgenerics/reference/cohortCodelist.md)
  : Get codelist from a cohort_table object.

- [`cohortColumns()`](https://darwin-eu.github.io/omopgenerics/reference/cohortColumns.md)
  : Required columns for a generated cohort set.

- [`cohortCount()`](https://darwin-eu.github.io/omopgenerics/reference/cohortCount.md)
  : Get cohort counts from a cohort_table object.

- [`cohortTables()`](https://darwin-eu.github.io/omopgenerics/reference/cohortTables.md)
  : Cohort tables that a cdm reference can contain in the OMOP Common
  Data Model.

- [`getCohortId()`](https://darwin-eu.github.io/omopgenerics/reference/getCohortId.md)
  : Get the cohort definition id of a certain name

- [`getCohortName()`](https://darwin-eu.github.io/omopgenerics/reference/getCohortName.md)
  : Get the cohort name of a certain cohort definition id

- [`recordCohortAttrition()`](https://darwin-eu.github.io/omopgenerics/reference/recordCohortAttrition.md)
  : Update cohort attrition.

- [`attrition(`*`<cohort_table>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/attrition.cohort_table.md)
  : Get cohort attrition from a cohort_table object.

- [`bind(`*`<cohort_table>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/bind.cohort_table.md)
  : Bind two or more cohort tables

- [`collect(`*`<cohort_table>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/collect.cohort_table.md)
  :

  To collect a `cohort_table` object.

- [`settings(`*`<cohort_table>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/settings.cohort_table.md)
  : Get cohort settings from a cohort_table object.

- [`summary(`*`<cohort_table>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/summary.cohort_table.md)
  : Summary a generated cohort set

### summarised_result utility functions

Utility functions for summarised_result objects

- [`transformToSummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/transformToSummarisedResult.md)
  : Create a \<summarised_result\> object from a data.frame, given a set
  of specifications.

- [`exportSummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/exportSummarisedResult.md)
  : Export a summarised_result object to a csv file.

- [`importSummarisedResult()`](https://darwin-eu.github.io/omopgenerics/reference/importSummarisedResult.md)
  : Import a set of summarised results.

- [`estimateTypeChoices()`](https://darwin-eu.github.io/omopgenerics/reference/estimateTypeChoices.md)
  :

  Choices that can be present in `estimate_type` column.

- [`resultColumns()`](https://darwin-eu.github.io/omopgenerics/reference/resultColumns.md)
  : Required columns that the result tables must have.

- [`resultPackageVersion()`](https://darwin-eu.github.io/omopgenerics/reference/resultPackageVersion.md)
  : Check if different packages version are used for summarise_results
  object

- [`isResultSuppressed()`](https://darwin-eu.github.io/omopgenerics/reference/isResultSuppressed.md)
  : To check whether an object is already suppressed to a certain min
  cell count.

- [`bind(`*`<summarised_result>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/bind.summarised_result.md)
  : Bind two or summarised_result objects

- [`settings(`*`<summarised_result>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/settings.summarised_result.md)
  : Get settings from a summarised_result object.

- [`summary(`*`<summarised_result>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/summary.summarised_result.md)
  : Summary a summarised_result

- [`suppress(`*`<summarised_result>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/suppress.summarised_result.md)
  : Function to suppress counts in result objects

- [`tidy(`*`<summarised_result>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/tidy.summarised_result.md)
  **\[experimental\]** :

  Turn a `<summarised_result>` object into a tidy tibble

- [`filterAdditional()`](https://darwin-eu.github.io/omopgenerics/reference/filterAdditional.md)
  : Filter the additional_name-additional_level pair in a
  summarised_result

- [`filterGroup()`](https://darwin-eu.github.io/omopgenerics/reference/filterGroup.md)
  : Filter the group_name-group_level pair in a summarised_result

- [`filterSettings()`](https://darwin-eu.github.io/omopgenerics/reference/filterSettings.md)
  :

  Filter a `<summarised_result>` using the settings

- [`filterStrata()`](https://darwin-eu.github.io/omopgenerics/reference/filterStrata.md)
  : Filter the strata_name-strata_level pair in a summarised_result

- [`splitAdditional()`](https://darwin-eu.github.io/omopgenerics/reference/splitAdditional.md)
  : Split additional_name and additional_level columns

- [`splitAll()`](https://darwin-eu.github.io/omopgenerics/reference/splitAll.md)
  : Split all pairs name-level into columns.

- [`splitGroup()`](https://darwin-eu.github.io/omopgenerics/reference/splitGroup.md)
  : Split group_name and group_level columns

- [`splitStrata()`](https://darwin-eu.github.io/omopgenerics/reference/splitStrata.md)
  : Split strata_name and strata_level columns

- [`uniteAdditional()`](https://darwin-eu.github.io/omopgenerics/reference/uniteAdditional.md)
  : Unite one or more columns in additional_name-additional_level format

- [`uniteGroup()`](https://darwin-eu.github.io/omopgenerics/reference/uniteGroup.md)
  : Unite one or more columns in group_name-group_level format

- [`uniteStrata()`](https://darwin-eu.github.io/omopgenerics/reference/uniteStrata.md)
  : Unite one or more columns in strata_name-strata_level format

- [`strataColumns()`](https://darwin-eu.github.io/omopgenerics/reference/strataColumns.md)
  : Identify variables in strata_name column

- [`additionalColumns()`](https://darwin-eu.github.io/omopgenerics/reference/additionalColumns.md)
  : Identify variables in additional_name column

- [`groupColumns()`](https://darwin-eu.github.io/omopgenerics/reference/groupColumns.md)
  : Identify variables in group_name column

- [`settingsColumns()`](https://darwin-eu.github.io/omopgenerics/reference/settingsColumns.md)
  :

  Identify settings columns of a `<summarised_result>`

- [`tidyColumns()`](https://darwin-eu.github.io/omopgenerics/reference/tidyColumns.md)
  :

  Identify tidy columns of a `<summarised_result>`

- [`pivotEstimates()`](https://darwin-eu.github.io/omopgenerics/reference/pivotEstimates.md)
  : Set estimates as columns

- [`addSettings()`](https://darwin-eu.github.io/omopgenerics/reference/addSettings.md)
  :

  Add settings columns to a `<summarised_result>` object

### codelist utility functions

Utility functions for codelist objects

- [`exportCodelist()`](https://darwin-eu.github.io/omopgenerics/reference/exportCodelist.md)
  : Export a codelist object.
- [`exportConceptSetExpression()`](https://darwin-eu.github.io/omopgenerics/reference/exportConceptSetExpression.md)
  : Export a concept set expression.
- [`importCodelist()`](https://darwin-eu.github.io/omopgenerics/reference/importCodelist.md)
  : Import a codelist.
- [`importConceptSetExpression()`](https://darwin-eu.github.io/omopgenerics/reference/importConceptSetExpression.md)
  : Import a concept set expression.
- [`print(`*`<codelist>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/print.codelist.md)
  : Print a codelist
- [`print(`*`<codelist_with_details>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/print.codelist_with_details.md)
  : Print a codelist with details
- [`print(`*`<concept_set_expression>`*`)`](https://darwin-eu.github.io/omopgenerics/reference/print.concept_set_expression.md)
  : Print a concept set expression

### Work with indexes

Methods and functions to work with indexes in database backends.

- [`existingIndexes()`](https://darwin-eu.github.io/omopgenerics/reference/existingIndexes.md)
  **\[experimental\]** : Existing indexes in a cdm object
- [`expectedIndexes()`](https://darwin-eu.github.io/omopgenerics/reference/expectedIndexes.md)
  **\[experimental\]** : Expected indexes in a cdm object
- [`statusIndexes()`](https://darwin-eu.github.io/omopgenerics/reference/statusIndexes.md)
  **\[experimental\]** : Status of the indexes
- [`createIndexes()`](https://darwin-eu.github.io/omopgenerics/reference/createIndexes.md)
  **\[experimental\]** : Create the missing indexes
- [`createTableIndex()`](https://darwin-eu.github.io/omopgenerics/reference/createTableIndex.md)
  **\[experimental\]** : Create a table index

### Argument validation

To validate input arguments of the functions

- [`validateAchillesTable()`](https://darwin-eu.github.io/omopgenerics/reference/validateAchillesTable.md)
  : Validate if a cdm_table is a valid achilles table.

- [`validateAgeGroupArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateAgeGroupArgument.md)
  : Validate the ageGroup argument. It must be a list of two integerish
  numbers lower age and upper age, both of the must be greater or equal
  to 0 and lower age must be lower or equal to the upper age. If not
  named automatic names will be given in the output list.

- [`validateCdmArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateCdmArgument.md)
  : Validate if an object in a valid cdm_reference.

- [`validateCdmTable()`](https://darwin-eu.github.io/omopgenerics/reference/validateCdmTable.md)
  : Validate if a table is a valid cdm_table object.

- [`validateCohortArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateCohortArgument.md)
  : Validate a cohort table input.

- [`validateCohortIdArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateCohortIdArgument.md)
  :

  Validate cohortId argument. CohortId can either be a
  cohort_definition_id value, a cohort_name or a tidyselect expression
  referinc to cohort_names. If you want to support tidyselect
  expressions please use the function as:
  `validateCohortIdArgument({{cohortId}}, cohort)`.

- [`validateColumn()`](https://darwin-eu.github.io/omopgenerics/reference/validateColumn.md)
  : Validate whether a variable points to a certain exiting column in a
  table.

- [`validateConceptSetArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateConceptSetArgument.md)
  : Validate conceptSet argument. It can either be a list, a codelist, a
  concept set expression or a codelist with details. The output will
  always be a codelist.

- [`validateNameArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateNameArgument.md)
  :

  Validate name argument. It must be a snake_case character vector. You
  can add the a cdm object to check `name` is not already used in that
  cdm.

- [`validateNameLevel()`](https://darwin-eu.github.io/omopgenerics/reference/validateNameLevel.md)
  : Validate if two columns are valid Name-Level pair.

- [`validateNameStyle()`](https://darwin-eu.github.io/omopgenerics/reference/validateNameStyle.md)
  :

  Validate `nameStyle` argument. If any of the element in `...` has
  length greater than 1 it must be contained in nameStyle. Note that
  snake case notation is used.

- [`validateNewColumn()`](https://darwin-eu.github.io/omopgenerics/reference/validateNewColumn.md)
  : Validate a new column of a table

- [`validateOmopTable()`](https://darwin-eu.github.io/omopgenerics/reference/validateOmopTable.md)
  : Validate an omop_table

- [`validateResultArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateResultArgument.md)
  : Validate if a an object is a valid 'summarised_result' object.

- [`validateStrataArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateStrataArgument.md)
  : To validate a strata list. It makes sure that elements are unique
  and point to columns in table.

- [`validateWindowArgument()`](https://darwin-eu.github.io/omopgenerics/reference/validateWindowArgument.md)
  : Validate a window argument. It must be a list of two elements
  (window start and window end), both must be integerish and window
  start must be lower or equal than window end.

### General assertions

To assert that an object fulfills certain criteria

- [`assertCharacter()`](https://darwin-eu.github.io/omopgenerics/reference/assertCharacter.md)
  : Assert that an object is a character and fulfill certain conditions.
- [`assertChoice()`](https://darwin-eu.github.io/omopgenerics/reference/assertChoice.md)
  : Assert that an object is within a certain oprtions.
- [`assertClass()`](https://darwin-eu.github.io/omopgenerics/reference/assertClass.md)
  : Assert that an object has a certain class.
- [`assertDate()`](https://darwin-eu.github.io/omopgenerics/reference/assertDate.md)
  : Assert Date
- [`assertList()`](https://darwin-eu.github.io/omopgenerics/reference/assertList.md)
  : Assert that an object is a list.
- [`assertLogical()`](https://darwin-eu.github.io/omopgenerics/reference/assertLogical.md)
  : Assert that an object is a logical.
- [`assertNumeric()`](https://darwin-eu.github.io/omopgenerics/reference/assertNumeric.md)
  : Assert that an object is a numeric.
- [`assertTable()`](https://darwin-eu.github.io/omopgenerics/reference/assertTable.md)
  : Assert that an object is a table.
- [`assertTrue()`](https://darwin-eu.github.io/omopgenerics/reference/assertTrue.md)
  : Assert that an expression is TRUE.

### Utility functions

- [`insertFromSource()`](https://darwin-eu.github.io/omopgenerics/reference/insertFromSource.md)
  **\[deprecated\]** : Convert a table that is not a cdm_table but have
  the same original source to a cdm_table. This Table is not meant to be
  used to insert tables in the cdm, please use insertTable instead.

- [`sourceType()`](https://darwin-eu.github.io/omopgenerics/reference/sourceType.md)
  : Get the source type of an object.

- [`tmpPrefix()`](https://darwin-eu.github.io/omopgenerics/reference/tmpPrefix.md)
  : Create a temporary prefix for tables, that contains a unique prefix
  that starts with tmp.

- [`uniqueId()`](https://darwin-eu.github.io/omopgenerics/reference/uniqueId.md)
  : Get a unique Identifier with a certain number of characters and a
  prefix.

- [`uniqueTableName()`](https://darwin-eu.github.io/omopgenerics/reference/uniqueTableName.md)
  : Create a unique table name

- [`isTableEmpty()`](https://darwin-eu.github.io/omopgenerics/reference/isTableEmpty.md)
  : Check if a table is empty or not

- [`toSnakeCase()`](https://darwin-eu.github.io/omopgenerics/reference/toSnakeCase.md)
  : Convert a character vector to snake case

- [`combineStrata()`](https://darwin-eu.github.io/omopgenerics/reference/combineStrata.md)
  : Provide all combinations of strata levels.

- [`createLogFile()`](https://darwin-eu.github.io/omopgenerics/reference/createLogFile.md)
  : Create a log file

- [`logMessage()`](https://darwin-eu.github.io/omopgenerics/reference/logMessage.md)
  : Log a message to a logFile

- [`summariseLogFile()`](https://darwin-eu.github.io/omopgenerics/reference/summariseLogFile.md)
  :

  Summarise and extract the information of a log file into a
  `summarised_result` object.

### Deprecated

Deprecated function that will be eliminated in future releases of the
package

- [`checkCohortRequirements()`](https://darwin-eu.github.io/omopgenerics/reference/checkCohortRequirements.md)
  **\[deprecated\]** : Check whether a cohort table satisfies
  requirements

- [`dropTable()`](https://darwin-eu.github.io/omopgenerics/reference/dropTable.md)
  **\[deprecated\]** :

  Drop a table from a cdm object. **\[deprecated\]**
