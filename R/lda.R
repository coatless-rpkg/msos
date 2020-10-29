#' Linear Discrimination
#'
#' Finds the coefficients \eqn{a_k} and constants \eqn{c_k} for Fisher's linear
#' discrimination function \eqn{d_k} in (11.31) and (11.32).
#'
#' @param x The \eqn{N \times P}{N x P} data matrix.
#' @param y The \eqn{N}-vector of group identities, assumed to be given by the numbers 1,...,\eqn{K} for \eqn{K} groups.
#'
#' @return
#' A list with the following components:
#' \describe{
#'   \item{a}{A \eqn{P x K} matrix, where column \eqn{K} contains the
#'            coefficents \eqn{a_k} for (11.31). The final column is all zero.}
#'   \item{c}{The \eqn{K}-vector of constants \eqn{c_k} for (11.31).
#'            The final value is zero.}
#' }
#'
#' @seealso \code{\link{sweep}}
#' @export
#' @examples
#' # Iris example
#' x.iris <- as.matrix(iris[, 1:4])
#' # Gets group vector (1, ... , 1, 2, ... , 2, 3, ..., 3)
#' y.iris <- rep(1:3, c(50, 50, 50))
#' ld.iris <- lda(x.iris, y.iris)
lda <-
  function(x, y) {
    if (is.vector(x)) {
      x <- matrix(x, ncol = 1)
    }
    K <- max(y)
    p <- ncol(x)
    n <- nrow(x)
    m <- NULL
    v <- matrix(0, ncol = p, nrow = p)
    for (k in 1:K) {
      xk <- x[y == k, ]
      if (is.vector(xk)) {
        xk <- matrix(xk, ncol = 1)
      }
      m <- rbind(m, apply(xk, 2, mean))
      v <- v + var(xk) * (nrow(xk) - 1)
    }
    v <- v / n
    phat <- table(y) / n

    ck <- NULL
    ak <- NULL
    vi <- solve(v)
    for (k in 1:K) {
      c0 <- -(1 / 2) * (m[k, ] %*% vi %*% m[k, ] - m[K, ] %*% vi %*% m[K, ]) + log(phat[k] / phat[K])
      ck <- c(ck, c0)
      a0 <- vi %*% (m[k, ] - m[K, ])
      ak <- cbind(ak, a0)
    }
    list(a = ak, c = ck)
  }
