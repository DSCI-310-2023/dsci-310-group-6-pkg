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
