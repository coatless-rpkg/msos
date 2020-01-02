#' Obtain pattern
#'
#' Returns the pattern obtained by summing \eqn{q_i} and \eqn{q_{i+1}}.
#'
#' @param pattern The pattern of equalities of the eigenvalues, given by the
#'                \eqn{K}-vector (\eqn{Q_1}, ... , \eqn{Q_K}) as in (13.8).
#' @param index1  Index \eqn{i} where \eqn{1 \le i < K}
#'
#' @return
#' A `vector` containing a pattern.
#'
#' @seealso \code{\link{pcbic}}, \code{\link{pcbic.stepwise}},
#'          and \code{\link{pcbic.subpatterns}}.
#'
#' @export
#' @examples
#' # NA
pcbic.unite <-
  function(pattern, index1) {
    if (index1 < 1) stop("starting index must be positive")
    k <- length(pattern)
    if (index1 > k - 1) stop("starting index must be less than length of pattern")
    if (k == 1) {
      return(pattern)
    }
    if (k == 2) {
      return(sum(pattern))
    }
    if (index1 == 1) {
      return(c(pattern[1] + pattern[2], pattern[3:k]))
    }
    if (index1 == k - 1) {
      return(c(pattern[1:(k - 2)], pattern[k - 1] + pattern[k]))
    }
    c(
      pattern[1:(index1 - 1)], pattern[index1] + pattern[index1 + 1],
      pattern[(index1 + 2):k]
    )
  }
