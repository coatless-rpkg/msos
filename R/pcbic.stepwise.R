#' Choosing a good pattern
#'
#' Uses the stepwise procedure described in Section 13.1.4 to find a pattern for
#' a set of observed eigenvalues with good BIC value.
#'
#' @param eigenvals The \eqn{Q}-vector of eigenvalues of the covariance matrix,
#'                  in order from largest to smallest.
#' @param n         The degrees of freedom in the covariance matrix.
#'
#' @return
#' A list with the following components:
#' \describe{
#'   \item{Patterns}{A list of patterns, one for each value of length \eqn{K}.}
#'   \item{BICs}{A vector of the BIC's for the above patterns.}
#'   \item{BestBIC}{The best (smallest) value among the BIC's in BICs.}
#'   \item{BestPattern}{The pattern with the best BIC.}
#'   \item{lambdaHat}{A \eqn{Q}-vector containing the MLE's for the eigenvalues
#'                    for the pattern with the best BIC.}
#' }
#'
#' @seealso \code{\link{pcbic}}, \code{\link{pcbic.unite}},
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
#' pcbic.stepwise(eg$values, 95)
pcbic.stepwise <-
  function(eigenvals, n) {
    k <- length(eigenvals)
    p0 <- rep(1, k)
    b <- rep(0, k)
    pb <- vector("list", k)
    pb[[1]] <- p0
    b[1] <- pcbic(eigenvals, n, p0)$BIC
    for (i in 2:k) {
      psb <- pcbic.subpatterns(eigenvals, n, pb[[i - 1]])
      b[i] <- min(psb$bic)
      pb[[i]] <- psb$pattern[, psb$bic == b[i]]
    }
    ib <- (1:k)[b == min(b)]
    list(
      Patterns = pb, BICs = b,
      BestBIC = b[ib], BestPattern = pb[[ib]],
      LambdaHat = pcbic(eigenvals, n, pb[[ib]])$lambdaHat
    )
  }
