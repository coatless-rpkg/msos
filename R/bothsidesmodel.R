#' Calculate the least squares estimates
#'
#' This function fits the model using least squares. It takes an optional
#' pattern matrix P as in (6.51), which specifies which \eqn{\beta _{ij}}'s are
#' zero.
#'
#' @param x       An \eqn{N \times P}{N x P} design matrix.
#' @param y       The \eqn{N \times Q}{N x Q} matrix of observations.
#' @param z       A \eqn{Q \times L}{Q x L} design matrix
#' @param pattern An optional \eqn{N \times P}{N x P} matrix of 0's and 1's
#'                indicating which elements of \eqn{\beta} are allowed to be
#'                nonzero.
#' @return
#' A list with the following components:
#' \describe{
#' \item{Beta}{The least-squares estimate of \eqn{\beta}.}
#' \item{SE}{The \eqn{P \times L}{P x L} matrix with the \eqn{ij}th element
#'           being the standard error of \eqn{\hat{\beta}_ij}.}
#' \item{T}{The \eqn{P \times L}{P x L} matrix with the \eqn{ij}th element being
#'         the \eqn{t}-statistic based on \eqn{\hat{\beta}_{ij}}.}
#' \item{Covbeta}{The estimated covariance matrix of the \eqn{\hat{\beta}_{ij}}'s.}
#' \item{df}{A \eqn{p}-dimensional vector of the degrees of freedom for the
#'           \eqn{t}-statistics, where the \eqn{j}th component contains the
#'           degrees of freedom for the \eqn{j}th column of \eqn{\hat{\beta}}.}
#' \item{Sigmaz}{The \eqn{Q \times Q}{Q x Q} matrix \eqn{\hat{\Sigma}_z}.}
#' \item{Cx}{The \eqn{Q \times Q}{Q x Q} residual sum of squares and
#'           crossproducts matrix.}
#' }
#'
#' @seealso \code{\link{bothsidesmodel.chisquare}}, \code{\link{bothsidesmodel.df}},
#'          \code{\link{bothsidesmodel.hotelling}}, \code{\link{bothsidesmodel.lrt}},
#'          and \code{\link{bothsidesmodel.mle}}.
#'
#' @export
#' @examples
#' # Mouth Size Example from 6.4.1
#' data(mouths)
#' x <- cbind(1, mouths[, 5])
#' y <- mouths[, 1:4]
#' z <- cbind(c(1, 1, 1, 1), c(-3, -1, 1, 3), c(1, -1, -1, 1), c(-1, 3, -3, 1))
#' bothsidesmodel(x, y, z)
bothsidesmodel <-
  function(x, y, z = diag(qq), pattern = matrix(1, nrow = p, ncol = l)) {
    x <- cbind(x)
    y <- cbind(y)
    n <- nrow(y)
    p <- ncol(x)
    qq <- ncol(y)
    z <- cbind(z)
    l <- ncol(z)

    if ((p * nrow(x) == 1 && x == 0) || (l * nrow(z) == 1 && z == 0)) {
      sigma <- t(y) %*% y / n
      output <- list(Beta = 0, SE = 0, T = 0, Covbeta = 0, df = n, Sigmaz = sigma)
      return(output)
    }

    yz <- t(lm(t(y) ~ z - 1)$coef)
    residb <- lm(yz ~ x - 1)$resid
    sigmab <- t(residb) %*% residb / (n - p)

    if (sum(pattern) == 0) {
      residss <- ((n - p - l - 1) / (n - p)) * tr(solve(sigmab, t(yz) %*% yz))
      output <- list(
        Beta = 0, SE = 0, T = 0, Covbeta = 0, df = n, Sigmaz = sigmab,
        ResidSS = residss, Dim = l * (l + 1) / 2, Cp = residss + l * (l + 1)
      )
      return(output)
    }


    rowse <- rowt <- rowb <- rep(0, p * l)
    rowp <- c(t(pattern)) == 1

    xx <- t(x) %*% x
    xyz <- t(x) %*% yz
    xyz <- c(t(xyz))[rowp]
    xxzz <- kronecker(xx, diag(l))[rowp, rowp]
    dstarinv <- solve(xxzz)
    g <- xyz %*% dstarinv
    rowb[rowp] <- g
    beta <- matrix(rowb, nrow = p, byrow = T)

    df <- bothsidesmodel.df(xx, n, pattern)
    residz <- yz - x %*% beta
    residsscp <- t(residz) %*% residz
    sigmaz <- residsscp / df
    xxzsz <- kronecker(xx, sigmaz)[rowp, rowp]
    covbeta <- dstarinv %*% xxzsz %*% dstarinv
    covbetab <- matrix(0, p * l, p * l)
    covbetab[rowp, rowp] <- covbeta
    se <- sqrt(diag(covbeta))
    tt <- g / se
    rowse[rowp] <- se
    rowt[rowp] <- tt
    residss <- ((n - p - l - 1) / (n - p)) * tr(solve(sigmab, residsscp))
    dd <- sum(pattern) + l * (l + 1) / 2


    list(
      Beta = beta, SE = matrix(rowse, nrow = p, byrow = T),
      T = matrix(rowt, nrow = p, byrow = T), Covbeta = covbetab, df = diag(df), Sigmaz = sigmaz,
      ResidSS = residss, Dim = dd, Cp = residss + 2 * dd
    )
  }
