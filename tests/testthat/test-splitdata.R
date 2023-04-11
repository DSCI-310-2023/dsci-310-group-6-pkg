data <- data.frame(x = c(1,2,3), y = c(4,5,6), z = c(7,8,9))
write.csv(data, file = here::here("test_data.csv"), row.names = FALSE)
input_path <- here::here("test_data.csv")
output_train_path <- here::here("test_train.csv")
output_test_path <- here::here("test_test.csv")

# Test that the function returns the correct training set with 1 row
test_that("`splitdata` should return a training set with 1 row", {
  expect_equal(nrow(splitdata(input_path, NULL, NULL, 0.34, "train")), 1)
})

# Test that the function returns the correct testing set with 1 row
test_that("`splitdata` should return a testing set with 1 row", {
  expect_equal(nrow(splitdata(input_path, NULL, NULL, 0.67, "test")), 1)
})

# Test if function throws an error when input_path is not a character
test_that("splitdata throws an error when input_path is not a character", {
  expect_error(splitdata(123, output_train_path, output_test_path, 0.8, "train"))
})

# Test if function throws an error when prop is not a number smaller than 1
test_that("splitdata throws an error when prop is not a number smaller than 1", {
  expect_error(splitdata(input_path, output_train_path, output_test_path, "0.8", "train"))
  expect_error(splitdata(input_path, output_train_path, output_test_path, 1.2, "train"))
})

# Test if function throws an error when train_test is not "train" or "test"
test_that("splitdata throws an error when train_test is not 'train' or 'test'", {
  expect_error(splitdata(input_path, output_train_path, output_test_path, 0.8, "train_test"))
})

# Test if function returns training set when train_test = "train"
test_that("splitdata returns training set when train_test = 'train'", {
  df_train <- splitdata(input_path, output_train_path, output_test_path, 0.8, "train")
  expect_equal(nrow(df_train), round(nrow(read.csv(input_path)) * 0.8))
})

# Test if function returns testing set when train_test = "test"
test_that("splitdata returns testing set when train_test = 'test'", {
  df_test <- splitdata(input_path, output_train_path, output_test_path, 0.8, "test")
  expect_equal(nrow(df_test), round(nrow(read.csv(input_path)) * 0.2))
})

file.remove(here::here("test_data.csv"))
file.remove(output_train_path)
file.remove(output_test_path)
