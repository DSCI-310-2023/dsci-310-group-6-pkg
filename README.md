# DSCI-310-group-6-pkg

## DSCI310 - Package for Predict Bike Sharing Demand
Authors: Linda Huang, Davis Li, Jialu Jin


## About
The package is used for generating the Bike Sharing Demand Report for dsci_310_group_6. The functions in this package includes cleaning data, spliting data and finding the mean/median/max of a given column.

The usage of this package include improving efficiency in analyzing data and simplify the process of predictive model building by integragting repetitive steps in the functions.


## Installation

First, clone this GitHub repository and open the terminal. In the terminal, navigate to the root folder of this project. 

  ```
  git clone https://github.com/DSCI-310/dsci-310-group-6-pkg

  ```

We use a Docker container image to make the computational environment for this project reproducible.

Navigate to the cloned folder in local terminal (example steps shown below):

1. Show the list of all folders in the current repository:
  ```
  ls 
  ```
  
2. Navigate to the cloned folder:
  ```
  cd dsci-310-group-6-pkg 
  ```
3. Run pip to install the package locally:
  ```
  pip install .
  ```

Now the package should be installed and you will be able to import the package into the R Markdown file for generating the analysis report.


## Usage

This package include functions that can be used throughout data wraggling and predictive model building process. The first function is to read data into the notebook and unselect specificed columns.
  ```
  from dsci_310_group_6_pkg.cleandata import clean_data
  clean_data(file_path, output_path = NULL, c("x", "y"))
  clean_data(file_path, output_path = NULL, cols = NULL)
  ```
 
Another usage for this package is to get some summary information (Min, Max, or Median) of a column:
  ```
  from dsci_310_group_6_pkg.getmax import get_max
  from dsci_310_group_6_pkg.getmed import get_med
  from dsci_310_group_6_pkg.getmin import get_min
  get_max(my_data, "col_y")
  get_min(my_data, "col_x")
  get_med(my_data, "col_y")
  ```
  
Before trainning the predictive models, we often need to split data in train and test sets. The function in the package shown below can be used to perform this task (note that the fourth argument represent the proportion for split):
  ```
  from dsci_310_group_6_pkg.splitdata import splitdata
  splitdata(input_path, NULL, NULL, 0.67, "test")
  splitdata(input_path, NULL, NULL, 0.34, "train")
  ```


## Dependencies:

R version 4.1.1 with R packages:
    r-GGally=2.1.2 \
    r-tidyverse=1.3.1 \
    r-tidymodels=0.2.0 \
    r-testthat=3.1.6 \
    r-repr=1.1.4 \
    r-readxl=1.4.0 \
    r-digest=0.6.29 \
    r-kknn=1.3.1 

## License Information

The project is made available under the [Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). The software provided in this project is offered under the [MIT open source license](https://opensource.org/license/mit/). 

See [the license file](LICENSE.md) for more information.

## License Information




