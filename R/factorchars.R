#' Take a column in a data.frame and coerce it from factors to characters.
#'
#' @param q Your data.frame
#' @param ... Your factor column(s)
#'
#' @return data.frame
#' @export
#'
#' @examples
#' factorchars(iris, "Species")
factorchars <- function(q, r) {
    Rlist <- q[[paste(r)]]
    Rlist <- as.character(Rlist)
    q[[paste(r)]] <- Rlist
    return(q)
}

