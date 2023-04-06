#' Reads data and unselect the specified columns
#'
#' Return the data frame without the specified columns from the input_path
#'
#' @param input_path A quoted path to the data file
#' @param output_path A quoted destination path
#' @param cols A list of quoted column name that we want to unselect
#'
#' @return A data frame excluding the specified columns
#'
#' @export


clean_data <- function(input_path, output_path = NULL, cols = NULL) {
  if(!is.character(input_path)) {
    stop("`read_data` expects a quoted path of the data file as the first input")
  }
  else if(!is.character(input_path) & !is.null(cols)) {
    stop("`read_data` expects either a list of unquoted column names as the second input")
  }

  data <- read.csv(input_path, sep=',', header = TRUE)
  if (!is.null(cols)) {
    data <- data[, !(names(data) %in% cols)]
  }
  if (!is.null(output_path)) {
    write.csv(data, file = output_path, row.names = FALSE)
  }

  return(data)
}
