#' Generates a pairplot plotting a scatter chart
#' and showing correlation between attributes. Also allows a title to be placed
#'
#' Save the pairplot in the results folder
#'
#' @param data A dataframe we are going to use
#' @param column_name A string representing the column we want to explore
#'
#' @return The max, min and median value
#'
#' @export

get_min <- function(data, column_name) {
  # Check that column_name is a character string
  if (!is.character(column_name)) {
    stop("Column name must be a character string.")
  }

  # Check that data is a data frame
  if (!is.data.frame(data)) {
    stop("`data` should be a data frame")
  }

  min_value <- min(data[[column_name]])

  return(min_value)
}
