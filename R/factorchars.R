#' Coerce a factor to character
#'
#' Take a factor from a list and coerce it to a character
#'
#' @param q Your list
#' @param r The column you wish to convert from factors to characters (as a character, like "r")
#'
#' @return list
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

