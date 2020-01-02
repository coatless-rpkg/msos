#' Maximizing negentropy for \eqn{q = 2} dimensions
#'
#' Searches for the rotation that maximizes the estimated negentropy of the
#' first column of the rotated data, for \eqn{q = 2} dimensional data.
#'
#' @param y The \eqn{n \times 2}{n x 2} data matrix.
#' @param m The number of angles (between \eqn{0} and \eqn{\pi}) over which
#'          to search.
#' @return
#' A list with the following components:
#' \describe{
#'   \item{vectors}{The \eqn{2 ? 2} orthogonal matrix G that optimizes the negentropy.}
#'   \item{values}{Estimated negentropies for the two rotated variables. The largest is first.}
#' }
#'
#' @seealso \code{\link{negent}}, \code{\link{negent3D}}
#'
#' @export
#' @examples
#' # Load iris data
#' data(iris)
#'
#' # Centers and scales the variables.
#' y <- scale(as.matrix(iris[, 1:2]))
#'
#' # Obtains Negent Vectors for 2 x 2 matrix
#' gstar <- negent2D(y, m = 10)$vectors
negent2D <-
  function(y, m = 100) {
    thetas <- (1:m) * pi / m
    ngnt <- NULL
    for (theta in thetas) {
      x <- y %*% c(cos(theta), sin(theta))
      ngnt <- c(ngnt, negent(x))
    }
    i <- imax(ngnt)
    g <- c(cos(thetas[i]), sin(thetas[i]))
    g <- cbind(g, c(-g[2], g[1]))
    list(vectors = g, values = c(ngnt[i], negent(y %*% g[, 2])))
  }
