#' Test subsets of \eqn{\beta} are zero.
#'
#' Tests the null hypothesis that an arbitrary subset of the \eqn{\beta _{ij}}'s
#' is zero, using the likelihood ratio test as in Section 9.4. The null and
#' alternative are specified by pattern matrices \eqn{P_0} and \eqn{P_A},
#' respectively. If the \eqn{P_A} is omitted, then the alternative will be
#' taken to be the unrestricted model.
#'
#' @param x         An \eqn{N \times P}{N x P} design matrix.
#' @param y         The \eqn{N \times Q}{N x Q} matrix of observations.
#' @param z         A \eqn{Q \times L}{Q x L} design matrix.
#' @param pattern0  An \eqn{N \times P}{N x P} matrix of 0's and 1's specifying
#                   the null hypothesis.
#' @param patternA  An optional \eqn{N \times P}{N x P} matrix of 0's and 1's
#'                  specifying the alternative hypothesis.
#'
#' @return
#' A list with the following components:
#' \describe{
#'   \item{chisq}{The likelihood ratio statistic in (9.44).}
#'   \item{df}{The degrees of freedom in the test.}
#'   \item{pvalue}{The \eqn{p}-value for the test.}
#' }
#'
#' @seealso \code{\link{bothsidesmodel.chisquare}}, \code{\link{bothsidesmodel.df}},
#'          \code{\link{bothsidesmodel.hotelling}}, \code{\link{bothsidesmodel}},
#'          and \code{\link{bothsidesmodel.mle}}.
#'
#' @export
#' @examples
#'
#' # Load data
#' data(caffeine)
#'
#' # Matrices
#' x <- cbind(
#'   rep(1, 28),
#'   c(rep(-1, 9), rep(0, 10), rep(1, 9)),
#'   c(rep(1, 9), rep(-1.8, 10), rep(1, 9))
#' )
#' y <- caffeine[, -1]
#' z <- cbind(c(1, 1), c(1, -1))
#' pattern <- cbind(c(rep(1, 3)), 1)
#'
#' # Fit model
#' bsm <- bothsidesmodel.lrt(x, y, z, pattern)
bothsidesmodel.lrt <-
  function(x, y, z, pattern0, patternA = matrix(1, nrow = ncol(x), ncol = ncol(z))) {
    bsmA <- bothsidesmodel.mle(x, y, z, patternA)
    bsm0 <- bothsidesmodel.mle(x, y, z, pattern0)
    chisq <- bsm0$Deviance - bsmA$Deviance
    df <- bsmA$Dim - bsm0$Dim
    list(Chisq = chisq, df = df, pvalue = 1 - pchisq(chisq, df))
  }
