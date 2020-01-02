#' Trace of a Matrix
#'
#' Takes the traces of a matrix by extracting the diagonal entries and then
#' summing over.
#'
#' @param x Square matrix (\eqn{Q \times Q}{Q x Q})
#'
#' @return
#' Returns a single-value double.
#'
#' @seealso \code{\link{logdet}}, \code{\link{fillout}}
#'
#' @export
#' @examples
#'
#' # Identity Matrix of size 4, gives trace of 4.
#' tr(diag(4))
tr <- function(x) sum(diag(x))
