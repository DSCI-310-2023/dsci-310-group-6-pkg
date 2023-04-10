# Test that the function returns the correct training set with 1 row
test_that("`splitdata` should return a training set with 1 row", {
  data <- data.frame(x = c(1,2,3), y = c(4,5,6), z = c(7,8,9))
  write.csv(data, file = here::here("test_data.csv"), row.names = FALSE)
  expect_equal(nrow(splitdata(here::here("test_data.csv"), NULL, NULL, 0.34, "train")), 1)
  file.remove(here::here("test_data.csv"))
})

# Test that the function returns the correct testing set with 1 row
test_that("`splitdata` should return a testing set with 1 row", {
  data <- data.frame(x = c(1,2,3), y = c(4,5,6), z = c(7,8,9))
  write.csv(data, file = here::here("test_data.csv"), row.names = FALSE)
  expect_equal(nrow(splitdata(here::here("test_data.csv"), NULL, NULL, 0.67, "test")), 1)
  file.remove(here::here("test_data.csv"))
})

# `splitdata` should throw an error when incorrect types are passed to `data` and `prop` and `train_test` arguments"
test_that("`splitdata` should throw an error when incorrect types
are passed to `data` and `prop` and `train_test` arguments", {
  data <- data.frame(x = c(1,2,3), y = c(4,5,6), z = c(7,8,9))
  write.csv(data, file = here::here("test_data.csv"), row.names = FALSE)
  expect_error(splitdata(hi, NULL, NULL, 0.6, "train"))
  expect_error(splitdata(input_path, NULL, NULL, 1, "train"))
  expect_error(splitdata(input_path, NULL, NULL, 0.6, "hi"))
  file.remove(here::here("test_data.csv"))
})
