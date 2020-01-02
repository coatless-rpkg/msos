#' Quadratic discrimination prediction
#'
#' The function uses the output from the function \code{\link{qda}}
#' (Section A.3.2) and a \eqn{P}-vector \eqn{X}, and calculates the predicted
#' group for this \eqn{X}.
#'
#' @param qd   The output from \code{\link{qda}}.
#' @param newx A \eqn{P}-vector \eqn{X} whose components match the variables
#'             used in the \code{\link{qda}} function.
#'
#' @return
#' A \eqn{K}-vector of the discriminant values \eqn{d_k^Q(X)} in
#' (11.48) for the given \eqn{X}.
#'
#' @seealso \code{\link{qda}}, \code{\link{imax}}
#'
#' @export
#' @examples
#'
#' # Load Iris Data
#' data(iris)
#'
#' # Build data
#' x.iris <- as.matrix(iris[, 1:4])
#' n <- nrow(x.iris)
#' # Gets group vector (1, ... , 1, 2, ..., 2, 3, ... , 3)
#' y.iris <- rep(1:3, c(50, 50, 50))
#'
#' # Perform QDA
#' qd.iris <- qda(x.iris, y.iris)
#' yhat.qd <- NULL
#' for (i in seq_len(n)) {
#'   yhat.qd <- c(yhat.qd, imax(predict_qda(qd.iris, x.iris[i, ])))
#' }
#' table(yhat.qd, y.iris)
predict_qda <-
  function(qd, newx) {
    newx <- c(newx)
    disc <- NULL
    K <- length(qd$c)
    for (k in 1:K) {
      dk <- -t(newx - qd$Mean[k, ]) %*%
        solve(qd$Sigma[k, , ], newx - qd$Mean[k, ]) + qd$c[k]
      disc <- c(disc, dk)
    }
    disc
  }
