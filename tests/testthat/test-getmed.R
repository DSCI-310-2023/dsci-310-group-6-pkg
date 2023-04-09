my_data <- data.frame(x = c(1, 2, 3, 4, 5),
                      y = c(10, 20, 30, 40, 50),
                      z = c(100, 200, 300, 400, 500))

# Test that the function return the right median
test_that("`getmed` should return 100", {
  expect_equal(get_med(my_data, "x"), 3)
})

# `getmed` should throw an error when incorrect types are passed to `data` and `column_name` arguments"
test_that("`getmed` should throw an error when incorrect types
are passed to `data` and `column_name` arguments", {
  expect_error(getmed(hi, "y"))
  expect_error(getmed(my_data, hi))
})
