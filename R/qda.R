#' Quadratic discrimination
#'
#' The function returns the elements needed to calculate the quadratic
#' discrimination in (11.48). Use the output from this function in
#' \code{\link{predict_qda}} (Section A.3.2) to find the predicted groups.
#'
#' @param x The \eqn{N \times P}{N x P} data matrix.
#' @param y The \eqn{N}-vector of group identities, assumed to be given by the
#'          numbers 1,...,\eqn{K} for \eqn{K} groups.
#'
#' @return
#' A `list` with the following components:
#' \describe{
#'   \item{Mean}{A \eqn{P \times K}{P x K} matrix, where column \eqn{K} contains
#'               the coefficents \eqn{a_k} for (11.31). The final column is all
#'               zero.}
#'   \item{Sigma}{A \eqn{K \times P \times P}{K x P x P} array, where the
#'                Sigma[k,,] contains the sample covariance matrix for group
#'                \eqn{k}, \eqn{\hat{\Sigma_k}}.}
#'   \item{c}{The \eqn{K}-vector of constants \eqn{c_k} for (11.48).}
#' }
#'
#' @seealso \code{\link{predict_qda}} and \code{\link{lda}}
#'
#' @export
#' @examples
#'
#' # Load Iris Data
#' data(iris)
#'
#' # Iris example
#' x.iris <- as.matrix(iris[, 1:4])
#'
#' # Gets group vector (1, ... , 1, 2, ... , 2, 3, ... , 3)
#' y.iris <- rep(1:3, c(50, 50, 50))
#'
#' # Perform QDA
#' qd.iris <- qda(x.iris, y.iris)
qda <-
  function(x, y) {
    K <- max(y)
    p <- ncol(x)
    n <- nrow(x)
    m <- NULL
    v <- array(0, c(K, p, p))
    ck <- NULL
    phat <- table(y) / n
    for (k in 1:K) {
      xk <- x[y == k, ]
      m <- rbind(m, apply(xk, 2, mean))
      nk <- nrow(xk)
      v[k, , ] <- var(xk) * (nk - 1) / nk
      ck <- c(ck, -log(det(v[k, , ])) + 2 * log(phat[k]))
    }

    list(Mean = m, Sigma = v, c = ck)
  }
