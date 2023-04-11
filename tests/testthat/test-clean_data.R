# Test if function returns expected data frame
test_that("clean_data() returns expected data frame", {
  data <- data.frame(x = c(1,2,3), y = c(4,5,6), z = c(7,8,9))
  write.csv(data, file = here::here("test_data.csv"), row.names = FALSE)
  output <- clean_data(input_path = here::here("test_data.csv"), cols = "z")
  expected_output <- data.frame(x = c(1,2,3), y = c(4,5,6))
  expect_equal(output, expected_output)
  file.remove(here::here("test_data.csv"))
})

# Test if function returns NULL when output_path is not provided
test_that("clean_data() returns NULL when output_path is not provided", {
  data <- data.frame(x = c(1,2,3), y = c(4,5,6), z = c(7,8,9))
  write.csv(data, file = "test_data.csv", row.names = FALSE)
  output <- capture_output(clean_data(input_path = "test_data.csv", cols = "z"))
  expect_equal(output, "")
  file.remove("test_data.csv")
})

# `read_data` should throw an error when incorrect types are passed to `file_path` and `cols` arguments"
test_that("`clean_data` should throw an error when incorrect types
are passed to `file_path` and `cols` arguments", {
  expect_error(clean_data(hi, output_path = NULL, c("x")))
  expect_error(clean_data(file_path, y))
})


# Input_path is not a character
test_that("clean_data throws an error when input_path is not a character", {
  expect_error(clean_data(123), "`clean_data` expects a quoted path of the data file as the first input")
})

# Test case 4: output_path is specified
test_that("clean_data writes data to output_path when specified", {
  data <- data.frame(x = c(1,2,3), y = c(4,5,6), z = c(7,8,9))
  write.csv(data, file = "test_data.csv", row.names = FALSE)
  temp_file <- tempfile(fileext = ".csv")
  clean_data("test_data.csv", output_path = temp_file)
  expect_true(file.exists(temp_file))
  file.remove("test_data.csv")
})
