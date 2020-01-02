#' Test blocks of \eqn{\beta} are zero.
#'
#' Performs tests of the null hypothesis H0 : \eqn{\beta^*} = 0, where
#' \eqn{\beta^*} is a block submatrix of \eqn{\beta} as in Section 7.2.
#'
#' @param x    An \eqn{N \times P}{N x P} design matrix.
#' @param y    The \eqn{N \times Q}{N x Q} matrix of observations.
#' @param z    A \eqn{Q \times L}{Q x L} design matrix
#' @param rows The vector of rows to be tested.
#' @param cols The vector of columns to be tested.
#'
#' @return
#' A list with the following components:
#'
#' \describe{
#'  \item{Hotelling}{A list with the components of the Lawley-Hotelling \eqn{T^2} test (7.22)}
#'  \describe{
#'    \item{T2}{The \eqn{T^2} statistic (7.19).}
#'    \item{F}{The \eqn{F} version (7.22) of the \eqn{T^2} statistic.}
#'    \item{df}{The degrees of freedom for the \eqn{F}.}
#'    \item{pvalue}{The \eqn{p}-value of the \eqn{F}.}
#'  }
#'  \item{Wilks}{A list with the components of the Wilks \eqn{\Lambda} test (7.37)}
#'  \describe{
#'    \item{lambda}{The \eqn{\Lambda} statistic (7.35).}
#'    \item{Chisq}{The \eqn{\chi ^2} version (7.37) of the \eqn{\Lambda} statistic, using Bartlett's correction.}
#'    \item{df}{The degrees of freedom for the \eqn{\chi ^2}}.
#'    \item{pvalue}{The p-value of the \eqn{\chi ^2}}.
#'  }
#' }
#'
#' @seealso \code{\link{bothsidesmodel}}, \code{\link{bothsidesmodel.chisquare}},
#'          \code{\link{bothsidesmodel.df}}, \code{\link{bothsidesmodel.lrt}},
#'           and \code{\link{bothsidesmodel.mle}}.
#'
#' @export
#' @examples
#' # Finds the Hotelling values for example 7.3.1
#' data(mouths)
#' x <- cbind(1, mouths[, 5])
#' y <- mouths[, 1:4]
#' z <- cbind(c(1, 1, 1, 1), c(-3, -1, 1, 3), c(1, -1, -1, 1), c(-1, 3, -3, 1))
#' bothsidesmodel.hotelling(x, y, z, 1:2, 3:4)
bothsidesmodel.hotelling <-
  function(x, y, z, rows, cols) {
    bsm <- bothsidesmodel(x, y, z)
    lstar <- length(cols)
    pstar <- length(rows)
    nu <- bsm$df[1]
    bstar <- bsm$Beta[rows, cols]
    if (lstar == 1) bstar <- matrix(bstar, ncol = 1)
    if (pstar == 1) bstar <- matrix(bstar, nrow = 1)
    W.nu <- bsm$Sigmaz[cols, cols]
    cx <- solve(t(x) %*% x)
    B <- t(bstar) %*% solve(cx[rows, rows]) %*% bstar
    t2 <- tr(solve(W.nu) %*% B)
    f <- (nu - lstar + 1) * t2 / (lstar * pstar * nu)
    df <- c(lstar * pstar, nu - lstar + 1)
    W <- W.nu * nu
    lambda <- ifelse(lstar == 1, W / (W + B), det(W) / det(W + B))
    chis <- -(nu - (lstar - pstar + 1) / 2) * log(lambda)
    Hotelling <- list(T2 = t2, F = f, df = df, pvalue = 1 - pf(f, df[1], df[2]))
    Wilks <- list(Lambda = lambda, Chisq = chis, df = df[1], pvalue = 1 - pchisq(chis, df[1]))
    list(Hotelling = Hotelling, Wilks = Wilks)
  }
