#' Take a column in a data.frame and coerce it from factors to characters.
#'
#' @param q Your data.frame
#' @param r The column you wish to convert from factors to characters (as a character, like "r")
#'
#' @return data.frame
#' @export
#'
#' @examples
#' factorchars(iris, "Species")
factorchars <- function(q, r) {
    Rlist <- q[[r]]
    Rlist <- as.character(Rlist)
    q[[r]] <- Rlist
    return(q)
}

