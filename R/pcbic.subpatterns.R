#' Obtain the best subpattern among the patterns.
#'
#' Obtains the best pattern and its BIC among the patterns obtainable by summing
#' two consecutive terms in \code{pattern0}.
#'
#' @param eigenvals The \eqn{Q}-vector of eigenvalues of the covariance matrix,
#'                  in order from largest to smallest.
#' @param n         The degrees of freedom in the covariance matrix.
#' @param pattern0  The pattern of equalities of the eigenvalues, given by the
#'                  \eqn{K}-vector (\eqn{Q_1}, ... , \eqn{Q_K}) as in (13.8).
#'
#' @return
#' A `list` containing:
#' \describe{
#'   \item{pattern}{A double matrix containing the pattern evaluated.}
#'   \item{bic}{A vector containing the BIC for the above pattern matrix.}
#' }
#'
#' @seealso \code{\link{pcbic}}, \code{\link{pcbic.stepwise}},
#'           and \code{\link{pcbic.unite}}.
#'
#' @export
#' @examples
#' # NA
pcbic.subpatterns <-
  function(eigenvals, n, pattern0) {
    b <- NULL
    pts <- NULL
    k <- length(pattern0)
    if (k == 1) {
      return(F)
    }
    for (i in 1:(k - 1)) {
      p1 <- pcbic.unite(pattern0, i)
      b2 <- pcbic(eigenvals, n, p1)
      b <- c(b, b2$BIC)
      pts <- cbind(pts, p1)
    }
    list(bic = b, pattern = pts)
  }
