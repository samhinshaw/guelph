# Welcome to the guelph package! [![Build Status](https://travis-ci.org/samhinshaw/guelph.svg?branch=master)](https://travis-ci.org/samhinshaw/guelph)

This package has been created for the [STAT547](http://stat545-ubc.github.io/) class, and was made to manage factors in a less headache-inducing way. 
Guelph contains the following functions:  
`fbind()` - combine two factors   
`freq_out()` - create a frequency table for the occurences of levels in a factor   
`countlevels()` - check which rows of factors in your data.frame should or shouldn't be factors   
`factorchars()` - quickly convert a specified column from a factor to a character   
*****
## Installation  
Guelph can be installed with devtools `devtools::install_github("samhinshaw/guelph")`  
and loaded with `library(guelph)`  
*****
## Some Notes 

#### 1. Further Goals   
If I had more time, I would combine the functions `countlevels()` and `factorchars()`.  This would allow me to easily check if a column has the same number of levels as rows, and coerce it to characters!

#### 2. Problems in Development  
First off, I'm still not sure what the deal with the vignettes is.  I seem to have generated one, but it's just the template vignette with nothing useful.  Is this an `.Rmd` file that I should be editing manually that then gets rendered to HTML and PDF (via latex)?   

Next, I had a lot of trouble passing checks in the beginning!  It turns out that I had used `tbl_df()` in `test_freq_out.R`, and using `importFrom(dplyr, "tbl_df()")` wasn't enough, I needed to import the entire package (`import(dplyr)`), so I changed
```
#' @importFrom dplyr %>%
#' @importFrom dplyr tbl_df()
```
to 
```
#' @import dplyr
```

In my guelph-package.R file, and re-ran `document()`.  It worked!
