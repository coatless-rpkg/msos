#' Make a square matrix
#'
#' The function fillout takes a \eqn{Q \times (Q - L)}{Q x (Q-L)} matrix \eqn{Z}
#' and fills it out so that it is a square matrix \eqn{Q \times Q}{Q x Q}.
#'
#' @param z A \eqn{Q \times (Q-L)}{Q x (Q-L)} matrix
#'
#' @return
#' A square matrix \eqn{Q \times Q}{Q x Q}
#'
#' @seealso \code{\link{tr}}, \code{\link{logdet}}
#'
#' @export
#' @examples
#' # Create a 3 x 2 matrix
#' a <- cbind(c(1, 2, 3), c(4, 5, 6))
#'
#' # Creates a 3 x 3 Matrix from 3 x 2 Data
#' fillout(a)
fillout <-
  function(z) {
    if (is.vector(z)) z <- matrix(z, ncol = 1)
    qq <- nrow(z)
    l <- ncol(z)
    if (l < qq) {
      qz <- diag(qq) - z %*% solve(t(z) %*% z, t(z))
      z <- cbind(z, eigen(qz)$vector[, 1:(qq - l)])
    }
    if (l > qq) {
      z <- t(fillout(t(z)))
    }
    z
  }
