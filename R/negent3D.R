#' Maximizing negentropy for \eqn{Q = 3} dimensions
#'
#' Searches for the rotation that maximizes the estimated negentropy of the
#' first column of the rotated data, and of the second variable fixing the
#' first, for \eqn{q = 3} dimensional data. The routine uses a random start for
#' the function optim using the simulated annealing option SANN, hence one may
#' wish to increase the number of attempts by setting nstart to a integer larger
#' than 1.
#'
#' @param y      The \eqn{N \times 3}{N x 3} data matrix.
#' @param nstart The number of times to randomly start the search routine.
#' @param m      The number of angles (between 0 and \eqn{\pi}) over which to
#'               search to find the second variables.
#' @param ...    Further optional arguments to pass to the \code{\link{optim}}
#'               function to control the simulated annealing algorithm.
#'
#' @return
#' A `list` with the following components:
#' \describe{
#'   \item{vectors}{The \eqn{3 x 3} orthogonal matrix G that optimizes
#'                  the negentropy.}
#'   \item{values}{Estimated negentropies for the three rotated variables,
#'                 from largest to smallest.}
#' }
#'
#' @seealso \code{\link{negent}}, \code{\link{negent2D}}
#'
#' @export
#' @examples
#' \dontrun{
#' # Running this example will take approximately 30s.
#' # Centers and scales the variables.
#' y <- scale(as.matrix(iris[, 1:3]))
#'
#' # Obtains Negent Vectors for 3x3 matrix
#' gstar <- negent3D(y, nstart = 100)$vectors
#' }
negent3D <-
  function(y, nstart = 1, m = 100, ...) {
    f <- function(thetas) {
      cs <- cos(thetas)
      sn <- sin(thetas)
      negent(y %*% c(cs[1], sn[1] * c(cs[2], sn[2])))
    }
    tt <- NULL
    nn <- NULL
    for (i in 1:nstart) {
      thetas <- runif(3) * pi
      o <- optim(thetas, f, method = "SANN", control = list(fnscale = -1), ...)
      tt <- rbind(tt, o$par)
      nn <- c(nn, o$value)
    }
    i <- imax(nn) # The index of best negentropy
    cs <- cos(tt[i, ])
    sn <- sin(tt[i, ])
    g.opt <- c(cs[1], sn[1] * cs[2], sn[1] * sn[2])
    g.opt <- cbind(g.opt, c(-sn[1], cs[1] * cs[2], sn[2] * cs[1]))
    g.opt <- cbind(g.opt, c(0, -sn[2], cs[2]))
    x <- y %*% g.opt[, 2:3]
    n2 <- negent2D(x, m = m)
    g.opt[, 2:3] <- g.opt[, 2:3] %*% n2$vectors
    list(vectors = g.opt, values = c(nn[i], n2$values))
  }
