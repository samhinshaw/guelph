#' Find out if your columns should be factors or not
#'
#' Take a data.frame and check each column.  All columns that are factors
#' will return the column name, and whether they should be considered a
#' factor.  A factor should not be considered a factor when each
#' level is unique.
#'
#' @param d A data.frame
#'
#' @return data.frame
#' @export
#'
#' @examples
#' countlevels(iris)
countlevels <- function(d) {
	dataframe <- ldply(d, function(x) if(is.null(levels(x))) {
		NULL
	} else if(length(x) == length(levels(x))) {
		"This column should NOT be a factor"
	} else "This column is okay as a factor")
	colnames(dataframe)[1] <- "Column Name"
	colnames(dataframe)[2] <- "Factor or Not?"
	return(dataframe)
}
