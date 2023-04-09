file_path <- here::here('data/sample_data.csv')

# Test that the function returns a data frame
test_that("`clean_data` should return a data frame", {
  expect_equal(class(clean_data(file_path, output_path = NULL, cols = NULL)), "data.frame")
})

# Test that the function returns the right data frame with 2 columns
test_that("`clean_data` returns a dataframe with 2 columns", {
  expect_equal(ncol(clean_data(file_path, output_path = NULL,c("x"))), 2)
})

# `read_data` should throw an error when incorrect types are passed to `file_path` and `cols` arguments"
test_that("`clean_data` should throw an error when incorrect types
are passed to `file_path` and `cols` arguments", {
  expect_error(clean_data(hi, output_path = NULL, c("x")))
  expect_error(clean_data(file_path, y))
})
