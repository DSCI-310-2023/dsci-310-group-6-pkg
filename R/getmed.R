#' Generates the median value from a column in a dataset
#'
#' @param data A dataframe we are going to use
#' @param column_name A string representing the column we want to explore
#'
#' @return The median value
#' @importFrom stats median
#' @export

get_med <- function(data, column_name) {
  # Check that column_name is a character string
  if (!is.character(column_name)) {
    stop("Column name must be a character string.")
  }

  # Check that data is a data frame
  if (!is.data.frame(data)) {
    stop("`data` should be a data frame")
  }

  med_value <- median(data[[column_name]])

  return(med_value)
}
