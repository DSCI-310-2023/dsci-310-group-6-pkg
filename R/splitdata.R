#' Splits the input data into training and testing sets.
#'
#' When the third input is "train":
#'  return the training set, which has (prop*total_number_of_rows_in_data) rows
#' When the third input is "test":
#'  return the testing set, which has ((1-prop)*total_number_of_rows_in_data) rows
#'
#' @param input_path A input path
#' @param output_train_path A output train path
#' @param output_test_path A output test path
#' @param prop The proportion of data to be split into training set (<1)
#' @param train_test A string indicating which set to return
#'
#' @return A data frame of training or testing set based on the third input
#' @importFrom dplyr sample_n anti_join
#' @export

splitdata <- function(input_path, output_train_path = NULL, output_test_path = NULL,prop,train_test) {
  if (!is.character(input_path)) {
    stop("`split_data` expects a quoted path of the data file as the first input")
  }
  else if(!is.numeric(prop) | prop >= 1) {
    stop("`split_data` expects a number smaller than 1 as second input")
  }
  else if(! train_test %in% c("train","test")) {
    stop("`split_data` expects either 'train' or 'test' as third input")
  }
  data <- read.csv(input_path)
  training <- sample_n(data, nrow(data)*prop, replace = FALSE)
  testing <- anti_join(data, training)
  if (!is.null(output_train_path)) {
    write.csv(training, file = here::here(output_train_path), row.names = FALSE)
  }
  if (!is.null(output_test_path)) {
    write.csv(testing, file = here::here(output_test_path), row.names = FALSE)
  }

  if (train_test == "train") {
    return (training)
  }
  else if (train_test == "test") {
    return(testing)
  }
}
