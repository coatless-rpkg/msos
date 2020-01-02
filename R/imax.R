#' Obtain largest value index
#'
#' Obtains the index of a vector that contains the largest value in the vector.
#'
#' @param z A vector of any length
#'
#' @return
#' The index of the largest value in a vector.
#'
#' @export
#' @examples
#' # Iris example
#' x.iris <- as.matrix(iris[, 1:4])
#' # Gets group vector (1, ... , 1, 2, ... , 2, 3, ... , 3)
#' y.iris <- rep(1:3, c(50, 50, 50))
#' ld.iris <- lda(x.iris, y.iris)
#' disc <- x.iris %*% ld.iris$a
#' disc <- sweep(disc, 2, ld.iris$c, "+")
#' yhat <- apply(disc, 1, imax)
imax <-
  function(z) ((1:length(z))[z == max(z)])[1]
