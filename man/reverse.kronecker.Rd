\name{reverse.kronecker}
\alias{reverse.kronecker}
\title{
Reverses the matrices in a Kronecker product
}
\description{
This function takes a matrix that is Kronecker product \eqn{A \otimes B} (Definition 3.5), where \eqn{A} is \eqn{P x Q} and \eqn{B} is \eqn{N x M}, and outputs the matrix \eqn{B \otimes A}. 
}
\usage{
reverse.kronecker(ab, p, qq)
}
\arguments{
  \item{ab}{The \eqn{(NP) x (QM)} matrix \eqn{A \otimes B}.}
  \item{p}{The number of rows of \eqn{A}.}
  \item{qq}{The number of columns of \eqn{A}.}
}
\value{
The \eqn{(NP) x (QM)} matrix \eqn{B \otimes A}.
}
\seealso{
\code{\link{kronecker}}
}
\examples{
( A = diag(1,3) )
( B = matrix(1:6, ncol = 2) )
( kron = kronecker(A,B) )
( reverse.kronecker(kron, 3,3))
( kron = kronecker(B,A) )
}
