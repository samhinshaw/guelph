<!-- README.md is generated from README.Rmd. Please edit that file -->
### Welcome to the guelph package!

This package has been created for the [STAT547](http://stat545-ubc.github.io/) class, and was made to manage factors in a less headache-inducing way. Guelph contains the following functions: `fbind()` `freq_out()` `countlevels()` `factorchars()` ------ \#\#\# Installation Install guelph with devtools `devtools::install_github("samhinshaw/guelph")` & loaded with `library(guelph)` ------ \#\#\# Some Notes on Writing the Package I had a lot of trouble passing checks in the beginning! It turns out that I had used `tbl_df()` in `test_freq_out.R`, and using `importFrom(dplyr, "tbl_df()")` wasn't enough, I needed to import the entire package (`import(dplyr)`), so I changed

    #' @importFrom dplyr %>%
    #' @importFrom dplyr tbl_df()

to

    #' @import dplyr

In my guelph-package.R file, and re-ran `document()`. It worked!
