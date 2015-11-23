#' Make a frequency table for a factor
#'
#' Create a data.frame showing the frequency of levels in a given factor
#'
#' @param x A factor
#'
#' @return tbl_df
#' @export
#' @examples
#' freq_out(iris$Species)
freq_out <- function(x) {
    xdf <- dplyr::data_frame(x)
    dplyr::count(xdf, x)
}
