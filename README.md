
<!-- README.md is generated from README.Rmd. Please edit that file -->

# DSCI-310-group-6-pkg

## DSCI310 - Package for Predict Bike Sharing Demand

Authors: Linda Huang, Davis Li, Jialu Jin

<!-- badges: start -->

[![R-CMD-check](https://github.com/DSCI-310/dsci-310-group-6-pkg/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DSCI-310/dsci-310-group-6-pkg/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## About

The package is used for generating the Bike Sharing Demand Report for
dsci_310_group_6. The functions in this package includes cleaning data,
spliting data and finding the mean/median/max of a given column.

The usage of this package include improving efficiency in analyzing data
and simplify the process of predictive model building by integragting
repetitive steps in the functions.

## Installation

Install the development version of datatheexplorer from GitHub with:

    # install.packages("devtools")
    devtools::install_github("DSCI-310/dsci-310-group-6-pkg")

Now the package should be installed and you will be able to import the
package into the R Markdown file for generating the analysis report.

## Usage

#### clean_data()

This package include functions that can be used throughout data
wraggling and predictive model building process. The first function is
to read data into the notebook and unselect specificed columns.

``` r
library(datatheexplorer)
sample_data
#>   x y  z
#> 1 1 5  9
#> 2 2 6 10
#> 3 3 7 11
#> 4 4 8 12
# This function will remove columns X and Y from the final dataframe
# clean_data(input_path, output_path = NULL, c("x", "y"))

# Specifying NULL in cols will keep all the columns from existing dataframe
# clean_data(input_path, output_path = NULL, cols = NULL)
```

#### get_max(), get_med(), get_min()

Another usage for this package is to get some summary information (Min,
Max, or Median) of a column:

``` r
library(datatheexplorer)
sample_data
#>   x y  z
#> 1 1 5  9
#> 2 2 6 10
#> 3 3 7 11
#> 4 4 8 12
# this will obtain the max of the column
get_max(sample_data, "y")
#> [1] 8

# this will obtain the min of the column
get_min(sample_data, "x")
#> [1] 1

# this will obtain the median of the column
get_med(sample_data, "y")
#> [1] 6.5
```

Before trainning the predictive models, we often need to split data in
train and test sets. The function in the package shown below can be used
to perform this task (note that the fourth argument represent the
proportion for split):

``` r
library(datatheexplorer)
sample_data
#>   x y  z
#> 1 1 5  9
#> 2 2 6 10
#> 3 3 7 11
#> 4 4 8 12
# splits the data into test and train datasets
splitdata(input_path, NULL, NULL, 0.67, "test")
#> Joining, by = c("x", "y", "z")
#>   x y  z
#> 1 1 5  9
#> 2 4 8 12
splitdata(input_path, NULL, NULL, 0.34, "train")
#> Joining, by = c("x", "y", "z")
#>   x y  z
#> 1 2 6 10
```

## Contributing:

We appreciate any contributions to the package and please refer to the
\[Conrtibuting\] (CONTRIBUTING.md) and \[Code of Conduct\]
(CODE_OF_CONDUCT.md) document for more information.

## License Information

The project is made available under the [Attribution 4.0 International
(CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). The software
provided in this project is offered under the [MIT open source
license](https://opensource.org/license/mit/).

See [the license file](LICENSE.md) for more information.
