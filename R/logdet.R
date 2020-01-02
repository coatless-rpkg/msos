#' Log Determinant
#'
#' Takes the log determinant of a square matrix. Log is that of base e
#' sometimes referred to as ln().
#'
#' @param a Square matrix (\eqn{Q \times Q}{Q x Q})
#'
#' @return
#' A single-value double.
#'
#' @seealso \code{\link{tr}} and \code{\link{fillout}}
#'
#' @export
#' @examples
#' # Identity Matrix of size 2
#' logdet(diag(c(2, 2)))
logdet <- function(a) {
  determinant(a)$modulus[1]
}
