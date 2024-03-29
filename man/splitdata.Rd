% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/splitdata.R
\name{splitdata}
\alias{splitdata}
\title{Splits the input data into training and testing sets.}
\usage{
splitdata(
  input_path,
  output_train_path = NULL,
  output_test_path = NULL,
  prop,
  train_test
)
}
\arguments{
\item{input_path}{A input path}

\item{output_train_path}{A output train path}

\item{output_test_path}{A output test path}

\item{prop}{The proportion of data to be split into training set (<1)}

\item{train_test}{A string indicating which set to return}
}
\value{
A data frame of training or testing set based on the third input
}
\description{
When the third input is "train":
return the training set, which has (prop*total_number_of_rows_in_data) rows
When the third input is "test":
return the testing set, which has ((1-prop)*total_number_of_rows_in_data) rows
}
