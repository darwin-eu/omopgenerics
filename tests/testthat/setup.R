
addFields <- function(x) {
  cols <- omopTableFields("5.3") |>
    dplyr::mutate(cdm_datatype = dplyr::if_else(
      grepl("varchar", .data$cdm_datatype), "character", .data$cdm_datatype
    )) |>
    dplyr::select(!c("is_required", "type")) |>
    dplyr::group_by(.data$cdm_table_name) |>
    dplyr::group_split() |>
    as.list()
  names(cols) <- purrr::map_chr(cols, \(x) unique(x$cdm_table_name))
  cols <- purrr::map(cols, \(x) {
    x$cdm_datatype |>
      as.list() |>
      rlang::set_names(x$cdm_field_name)
  })
  valuetype <- function(type) {
    switch(type,
           "integer" = NA_integer_,
           "datetime" = as.Date(NA_character_),
           "character" = NA_character_,
           "date" = as.Date(NA_character_),
           "float" = NA_real_,
           "logical" = NA)
  }
  purrr::imap(x, \(tib, nm) {
    if (nm %in% names(cols)) {
      expectedCols <- names(cols[[nm]])
      missingCols <- expectedCols[!expectedCols %in% colnames(tib)]
      for (col in missingCols) {
        type <- cols[[nm]][[col]]
        tib <- tib |>
          dplyr::mutate(!!col := valuetype(type))
      }
    }
    tib
  })
}
