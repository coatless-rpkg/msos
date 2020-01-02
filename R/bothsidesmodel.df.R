#' Obtain the degrees of freedom for a model.
#'
#' Determines the denominators needed to calculate an unbiased estimator of
#' \eqn{\Sigma_R}.
#'
#' @param xx       Result of \eqn{(X^T * X)}, where T denotes tranpose.
#' @param n        Number of rows in observation matrix given
#' @param pattern  An \eqn{N \times P}{N x P} matrix of 0's and 1's indicating
#'                 which elements of \eqn{\beta} are allowed to be nonzero.
#' @return
#' A \code{numeric} matrix of size \eqn{N \times N}{N x N} containing
#' the degrees of freedom for the test.
#'
#' @seealso \code{\link{bothsidesmodel}}, \code{\link{bothsidesmodel.chisquare}},
#'          \code{\link{bothsidesmodel.hotelling}}, \code{\link{bothsidesmodel.lrt}},
#'          and \code{\link{bothsidesmodel.mle}}.
#'
#' @export
#' @examples
#' # Find the DF for a likelihood ratio test statistic.
#' x <- cbind(
#'   1, c(-2, -1, 0, 1, 2), c(2, -1, -2, -1, 2),
#'   c(-1, 2, 0, -2, 1), c(1, -4, 6, -4, 1)
#' )
#' # or x <- cbind(1, poly(1:5, 4))
#' data(skulls)
#' x <- kronecker(x, rep(1, 30))
#' y <- skulls[, 1:4]
#' z <- diag(4)
#' pattern <- rbind(c(1, 1, 1, 1), 1, 0, 0, 0)
#' xx <- t(x) %*% x
#' bothsidesmodel.df(xx, nrow(y), pattern)
bothsidesmodel.df <-
  function(xx, n, pattern) {
    l <- ncol(pattern)
    tt <- pattern == 1
    pj <- apply(pattern, 2, sum)

    df <- matrix(0, l, l)
    diag(df) <- n - pj

    a <- vector("list", l)

    a[[1]] <- solve(xx[tt[, 1], tt[, 1]])

    for (i in 2:l) {
      if (pj[i] > 0) a[[i]] <- solve(xx[tt[, i], tt[, i]])
      for (j in 1:(i - 1)) {
        if (pj[i] == 0 | pj[j] == 0) {
          pij <- 0
        }
        else {
          b <- xx[tt[, i], tt[, j]]
          if (is.vector(b)) b <- matrix(b, nrow = pj[i])
          pij <- tr(a[[i]] %*% b %*% a[[j]] %*% t(b))
        }
        df[j, i] <- df[i, j] <- n - pj[i] - pj[j] + pij
      }
    }
    df
  }
