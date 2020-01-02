#' Reverses the matrices in a Kronecker product
#'
#' This function takes a matrix that is Kronecker product \eqn{A \otimes B}
#' (Definition 3.5), where \eqn{A} is \eqn{P x Q} and \eqn{B} is \eqn{N x M},
#' and outputs the matrix \eqn{B \otimes A}.
#'
#'
#' @param ab The \eqn{(NP) \times (QM)}{(NP) x (QM)} matrix \eqn{A \otimes B}.
#' @param p  The number of rows of \eqn{A}.
#' @param qq The number of columns of \eqn{A}.
#' @return The \eqn{(NP) \times (QM)}{(NP) x (QM)} matrix \eqn{B \otimes A}.
#' @export
#' @seealso \code{\link{kronecker}}
#' @examples
#'
#' # Create matrices
#' (A <- diag(1, 3))
#' (B <- matrix(1:6, ncol = 2))
#'
#' # Perform kronecker
#' (kron <- kronecker(A, B))
#'
#' # Perform reverse kronecker product
#' (reverse.kronecker(kron, 3, 3))
#'
#' # Perform kronecker again
#' (kron2 <- kronecker(B, A))
reverse.kronecker <-
  function(ab, p, qq) {
    m <- nrow(ab) / p
    n <- ncol(ab) / qq
    rr <- c(outer((0:(p - 1)) * m, 1:m, "+"))
    cc <- c(outer((0:(qq - 1)) * n, 1:n, "+"))
    ab[rr, cc]
  }
