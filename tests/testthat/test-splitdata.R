input_path <- here::here('dsci-310-group-6-pkg/data/sample_data.csv')

# Test that the function returns the correct training set with 1 row
test_that("`splitdata` should return a training set with 1 row", {
  expect_equal(nrow(splitdata(input_path, NULL, NULL, 0.34, "train")), 1)
})

# Test that the function returns the correct testing set with 1 row
test_that("`splitdata` should return a testing set with 1 row", {
  expect_equal(nrow(splitdata(input_path, NULL, NULL, 0.67, "test")), 1)
})

# `splitdata` should throw an error when incorrect types are passed to `data` and `prop` and `train_test` arguments"
test_that("`splitdata` should throw an error when incorrect types
are passed to `data` and `prop` and `train_test` arguments", {
  expect_error(splitdata(hi, NULL, NULL, 0.6, "train"))
  expect_error(splitdata(input_path, NULL, NULL, 1, "train"))
  expect_error(splitdata(input_path, NULL, NULL, 0.6, "hi"))
})
