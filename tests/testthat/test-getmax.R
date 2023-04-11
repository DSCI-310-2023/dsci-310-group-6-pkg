my_data <- data.frame(x = c(1, 2, 3, 4, 5),
                      y = c(10, 20, 30, 40, 50),
                      z = c(100, 200, 300, 400, 500))

# Test that the function return the right max
test_that("`getmax` should return 50", {
  expect_equal(get_max(my_data, "y"), 50)
})

# `getmax` should throw an error when incorrect types are passed to `data` and `column_name` arguments"
test_that("`getmax` should throw an error when incorrect types
are passed to `data` and `column_name` arguments", {
  expect_error(getmax(hi, "y"))
  expect_error(getmax(my_data, hi))
})

# Data is not a data frame
test_that("get_max throws an error when data is not a data frame", {
  expect_error(get_max(list(x = 1:3, y = 4:6), "y"), "`data` should be a data frame")
})

# column_name is not a character string
test_that("get_max throws an error when column_name is not a character string", {
  expect_error(get_max(my_data, 123), "Column name must be a character string.")
})
