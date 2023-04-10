# DSCI-310-group-6-pkg

## DSCI310 - Package for Predict Bike Sharing Demand
Authors: Linda Huang, Davis Li, Jialu Jin


## About
The package is used for generating the Bike Sharing Demand Report for dsci_310_group_6. The functions in this package includes cleaning data, spliting data and finding the mean/median/max of a given column.

The usage of this package include improving efficiency in analyzing data and simplify the process of predictive model building by integragting repetitive steps in the functions.


## Installation

Install the development version of datatheexplorer from GitHub with:
  ```
  # install.packages("devtools")
  devtools::install_github("DSCI-310/dsci-310-group-6-pkg")
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


## Contributing:

We appreciate any contributions to the package and please refer to the [Conrtibuting] (CONTRIBUTING.md) and [Code of Conduct] (CODE_OF_CONDUCT.md) document for more information. 

## License Information

The project is made available under the [Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). The software provided in this project is offered under the [MIT open source license](https://opensource.org/license/mit/). 

See [the license file](LICENSE.md) for more information.






