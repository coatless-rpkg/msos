#' BIC for a particular pattern
#'
#' Find the BIC and MLE from a set of observed eigenvalues for a specific pattern.
#'
#' @param eigenvals The \eqn{Q}-vector of eigenvalues of the covariance matrix,
#'                  in order from largest to smallest.
#' @param n         The degrees of freedom in the covariance matrix.
#' @param pattern   The pattern of equalities of the eigenvalues, given by the
#'                 \eqn{K}-vector (\eqn{Q_1}, ... , \eqn{Q_K}) as in (13.8).
#'
#' @return
#' A `list` with the following components:
#' \describe{
#'  \item{lambdaHat}{A \eqn{Q}-vector containing the MLE's for the eigenvalues.}
#'  \item{Deviance}{The deviance of the model, as in (13.13).}
#'  \item{Dimension}{The dimension of the model, as in (13.12).}
#'  \item{BIC}{The value of the BIC for the model, as in (13.14).}
#' }
#'
#' @seealso \code{\link{pcbic.stepwise}}, \code{\link{pcbic.unite}},
#'          and \code{\link{pcbic.subpatterns}}.
#'
#' @export
#' @examples
#' # Build cars1
#' require("mclust")
#' mcars <- Mclust(cars)
#' cars1 <- cars[mcars$classification == 1, ]
#' xcars <- scale(cars1)
#' eg <- eigen(var(xcars))
#' pcbic(eg$values, 95, c(1, 1, 3, 3, 2, 1))
pcbic <-
  function(eigenvals, n, pattern) {
    p <- length(eigenvals)
    l <- eigenvals
    k <- length(pattern)
    istart <- 1
    for (i in 1:k) {
      iend <- istart + pattern[i]
      l[istart:(iend - 1)] <- mean(l[istart:(iend - 1)])
      istart <- iend
    }
    dev <- n * sum(log(l))
    dimen <- (p^2 - sum(pattern^2)) / 2 + k
    bic <- dev + log(n) * dimen
    list(lambdaHat = l, Deviance = dev, Dimension = dimen, BIC = bic)
  }
