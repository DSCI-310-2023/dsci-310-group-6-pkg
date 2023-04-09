file_path <- here::here('data/day.csv')

# `read_data` should throw an error when incorrect types are passed to `file_path` and `cols` arguments"
test_that("`clean_data` should throw an error when incorrect types
are passed to `file_path` and `cols` arguments", {
  expect_error(count_classes(hi, output_path = NULL, c("x")))
  expect_error(count_classes(file_path, y))
})
