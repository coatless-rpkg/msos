#' Estimating negative entropy
#'
#' Calculates the histogram-based estimate (A.2) of the negentropy,
#' \deqn{Negent(g) = (1/2)*(1 + log(2\pi \sigma ^2)) - Entropy(g),}
#' for a vector of observations.
#'
#' @param x The \eqn{n}-vector of observations.
#' @param K The number of bins to use in the histogram.
#'
#' @return
#' The value of the estimated negentropy.
#' @seealso \code{\link{negent2D}},\code{\link{negent3D}}
#' @export
#' @examples
#' # TBA - Submit a PR!
negent <-
  function(x, K = ceiling(log2(length(x)) + 1)) {
    p <- table(cut(x, breaks = K)) / length(x)
    sigma2 <- sum((1:K)^2 * p) - sum((1:K) * p)^2
    p <- p[(p > 0)]
    (1 + log(2 * pi * (sigma2 + 1 / 12))) / 2 + sum(p * log(p))
  }
