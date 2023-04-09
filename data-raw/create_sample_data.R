## code to prepare `DATASET` dataset goes here

sample_data <- data.frame(x = c(1,2,3), y = c(3,4,5), z = c(5,7,8))
readr::write_csv(sample_data, path = "data/sample_data.csv")
