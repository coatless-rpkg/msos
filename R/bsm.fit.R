#' Helper function to determine \eqn{\beta} estimates for MLE regression with
#' patterning.
#'
#' Generates \eqn{\beta} estimates for MLE using a conditioning approach with
#' patterning support.
#'
#' @param x         An \eqn{N \times (P + F)}{N x (P + F)} design matrix, where
#'                  \eqn{F} is the number of columns conditioned on. This is
#'                  equivalent to the multiplication of \eqn{xyzb}.
#' @param y         The \eqn{N \times (Q - F)}{N x (Q - F)} matrix of
#'                  observations, where \eqn{F} is the number of columns
#'                  conditioned on. This is equivalent to the multiplication
#'                  of \eqn{Yz_a}.
#' @param z         A \eqn{(Q - F) \times L}{(Q - F) x L} design matrix,
#'                  where \eqn{F} is the number of columns conditioned on.
#' @param pattern   An optional \eqn{N-F x F} matrix of 0's and 1's indicating
#'                  which elements of \eqn{\beta} are allowed to be nonzero.
#'
#' @return
#' A list with the following components:
#' \describe{
#'   \item{Beta}{The least-squares estimate of \eqn{\beta}.}
#'   \item{SE}{The \eqn{(P+F)\times L}{(P + F) x L} matrix with the \eqn{ij}th
#'             element being the standard error of \eqn{\hat{\beta}_ij}.}
#'   \item{T}{The \eqn{(P+F)\times L}{(P + F) x L} matrix with the \eqn{ij}th
#'            element being the t-statistic based on \eqn{\hat{\beta}_ij}.}
#'   \item{Covbeta}{The estimated covariance matrix of the \eqn{\hat{\beta}_ij}'s.}
#'   \item{df}{A \eqn{p}-dimensional vector of the degrees of freedom for the
#'             \eqn{t}-statistics, where the \eqn{j}th component contains the
#'             degrees of freedom for the \eqn{j}th column of \eqn{\hat{\beta}}.}
#'   \item{Sigmaz}{The \eqn{(Q - F) \times (Q - F)}{(Q - F) x (Q - F)}
#'                 matrix \eqn{\hat{\Sigma}_z}.}
#'   \item{Cx}{The \eqn{Q \times Q}{Q x Q} residual sum of squares and
#'             crossproducts matrix.}
#' }
#'
#' @seealso \code{\link{bothsidesmodel.mle}} and \code{\link{bsm.simple}}
#'
#' @export
#' @examples
#' # NA
bsm.fit <-
  function(x, y, z, pattern) {
    n <- nrow(y)
    p <- ncol(x)
    l <- ncol(z)
    xx <- t(x) %*% x
    xy <- t(x) %*% y
    rowp <- c(t(pattern)) == 1
    lsreg <- lm(y ~ x - 1)
    yqxy <- t(lsreg$resid) %*% lsreg$resid
    beta0 <- lsreg$coef
    sigma <- cov(y) * (n - 1) / n
    rowse <- rowt <- rowb <- rep(0, p * l)
    dev0 <- n * logdet(sigma)

    maxiter <- 25
    iter <- 0

    repeat {
      sigmainvz <- solve(sigma, z)
      xyz <- c(t(xy %*% sigmainvz))[rowp]
      xxzz <- kronecker(xx, t(z) %*% sigmainvz)[rowp, rowp]
      dstarinv <- solve(xxzz)
      gamma <- xyz %*% dstarinv
      rowb[rowp] <- gamma
      beta <- matrix(rowb, nrow = p, byrow = T)
      betadiff <- beta0 - beta %*% t(z)
      sigma <- (yqxy + t(betadiff) %*% xx %*% betadiff) / n
      dev <- n * logdet(sigma)
      iter <- iter + 1
      if (abs(dev - dev0) < 0.00001) break
      if (iter >= maxiter) break
      dev0 <- dev
    }
    df <- n - p
    covbeta <- solve(xxzz) * (n / df)
    se <- sqrt(diag(covbeta))
    tt <- gamma / se
    rowse[rowp] <- se
    rowt[rowp] <- tt
    se <- matrix(rowse, nrow = p, byrow = T)
    tt <- matrix(rowt, nrow = p, byrow = T)
    list(Beta = beta, SE = se, T = tt, Covbeta = covbeta, df = df)
  }
