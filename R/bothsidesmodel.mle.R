#' Calculate the maximum likelihood estimates
#'
#' This function fits the model using maximum likelihood. It takes an optional
#' pattern matrix \eqn{P} as in (6.51), which specifies which \eqn{\beta _{ij}}'s
#' are zero.
#'
#' @param x       An \eqn{N \times P}{N x P} design matrix.
#' @param y       The \eqn{N \times Q}{N x Q} matrix of observations.
#' @param z       A \eqn{Q \times L}{Q x L} design matrix
#' @param pattern An optional \eqn{N \times P}{N x P} matrix of 0's and 1's
#'                indicating which elements of \eqn{\beta} are allowed to be
#'                nonzero.
#'
#' @return
#' A list with the following components:
#' \describe{
#'  \item{Beta}{The least-squares estimate of \eqn{\beta}.}
#'  \item{SE}{The \eqn{P \times L}{P x L} matrix with the \eqn{ij}th element
#'            being the standard error of \eqn{\hat{\beta}_{ij}}.}
#'  \item{T}{The \eqn{P \times L}{P x L} matrix with the \eqn{ij}th element
#'           being the \eqn{t}-statistic based on \eqn{\hat{\beta}_{ij}}.}
#'  \item{Covbeta}{The estimated covariance matrix of the \eqn{\hat{\beta}_{ij}}'s.}
#'  \item{df}{A \eqn{p}-dimensional vector of the degrees of freedom for the
#'            \eqn{t}-statistics, where the \eqn{j}th component contains the
#'            degrees of freedom for the \eqn{j}th column of \eqn{\hat{\beta}}.}
#'  \item{Sigmaz}{The \eqn{Q \times Q}{Q x Q} matrix \eqn{\hat{\Sigma}_z}.}
#'  \item{Cx}{The \eqn{Q \times Q}{Q x Q} residual sum of squares and
#'            crossproducts matrix.}
#'  \item{ResidSS}{The dimension of the model, counting the nonzero
#'                 \eqn{\beta _{ij}}'s and components of \eqn{\Sigma _z}.}
#'  \item{Deviance}{Mallow's \eqn{C_p} Statistic.}
#'  \item{Dim}{The dimension of the model, counting the nonzero
#'             \eqn{\beta _{ij}}'s and components of \eqn{\Sigma_z}}
#'  \item{AICc}{The corrected AIC criterion from (9.87) and (aic19)}
#'  \item{BIC}{The BIC criterion from (9.56).}
#' }
#'
#' @seealso \code{\link{bothsidesmodel.chisquare}}, \code{\link{bothsidesmodel.df}},
#'          \code{\link{bothsidesmodel.hotelling}}, \code{\link{bothsidesmodel.lrt}},
#'          and \code{\link{bothsidesmodel}}.
#'
#' @export
#' @examples
#' data(mouths)
#' x <- cbind(1, mouths[, 5])
#' y <- mouths[, 1:4]
#' z <- cbind(1, c(-3, -1, 1, 3), c(-1, 1, 1, -1), c(-1, 3, -3, 1))
#' bothsidesmodel.mle(x, y, z, cbind(c(1, 1), 1, 0, 0))
bothsidesmodel.mle <-
  function(x, y, z = diag(qq), pattern = matrix(1, nrow = p, ncol = l)) {
    x <- cbind(x)
    y <- cbind(y)
    n <- nrow(y)
    p <- ncol(x)
    qq <- ncol(y)
    z <- cbind(z)
    l <- ncol(z)

    if (length(x) == 1 && x == 0) {
      bsm <- list(Beta = 0, SE = 0, T = 0, Covbeta = 0, df = n)
      resid <- y
      psum <- 0
    } else {
      bsm <- list()
      beta <- se <- tt <- matrix(0, nrow = p, ncol = l)
      psum <- sum(pattern)
      if (psum > 0) {
        rowin <- apply(pattern, 1, max) == 1
        colin <- apply(pattern, 2, max) == 1
        x1 <- x[, rowin, drop = FALSE]
        z1 <- z[, colin, drop = FALSE]
        yz <- cbind(y %*% solve(t(fillout(z1))))
        l1 <- ncol(z1)
        p1 <- ncol(x1)
        yza <- yz[, 1:l1, drop = FALSE]
        xyzb <- x[, rowin, drop = FALSE]
        if (l1 < qq) xyzb <- cbind(xyzb, yz[, (l1 + 1):qq])
        pattern1 <- pattern[rowin, colin]
        if (min(pattern1) == 1) {
          bsm <- bsm.simple(xyzb, yza, diag(l1))
          bsm$Cx <- bsm$Cx[1:p1, 1:p1]
        } else {
          pattern2 <- rbind(pattern1, matrix(1, nrow = qq - l1, ncol = l1))
          bsm <- bsm.fit(xyzb, yza, diag(l1), pattern2)
        }
        beta[rowin, colin] <- bsm$Beta[1:p1, ]
        se[rowin, colin] <- bsm$SE[1:p1, ]
        tt[rowin, colin] <- bsm$T[1:p1, ]
        bsm$Covbeta <- bsm$Covbeta[1:psum, 1:psum]
      }
      bsm$Beta <- beta
      bsm$SE <- se
      bsm$T <- tt
      if (psum == 0) {
        bsm$Covbeta <- 0
        bsm$df <- n
        p1 <- 0
      }
      resid <- y - x %*% beta %*% t(z)
    }
    bsm$SigmaR <- t(resid) %*% resid / n
    bsm$Deviance <- n * logdet(bsm$SigmaR) + n * qq
    bsm$Dim <- psum + qq * (qq + 1) / 2
    bsm$AICc <- bsm$Deviance + (n / (n - p1 - qq - 1)) * 2 * bsm$Dim
    bsm$BIC <- bsm$Deviance + log(n) * bsm$Dim
    bsm$Cx <- NULL
    bsm$Sigmaz <- NULL

    bsm
  }
