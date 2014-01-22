\name{negent3D}
\alias{negent3D}
\title{
Maximizing negentropy for \eqn{Q = 3} dimensions
}
\description{
Searches for the rotation that maximizes the estimated negentropy of the first column of the rotated data, and of the second variable fixing the first, for \eqn{q = 3} dimensional data. The routine uses a random start for the function optim using the simulated annealing option SANN, hence one may wish to increase the number of attempts by setting nstart to a integer larger than 1.
}
\usage{
negent3D(y, nstart = 1, m = 100, ...)
}
\arguments{
  \item{y}{The \eqn{N x 3} data matrix.
}
  \item{nstart}{The number of times to randomly start the search routine.}
  \item{m}{The number of angles (between 0 and \eqn{\pi}) over which to search to find the second variables.}
  \item{\dots}{Further optional arguments to pass to the \code{\link{optim}} function to control the simulated annealing algorithm.
}
}
\value{
A list with the following components:
\item{vectors}{The \eqn{3 ? 3} orthogonal matrix G that optimizes the negentropy.}
\item{values}{Estimated negentropies for the three rotated variables, from largest to smallest.}
}
\examples{
#Centers and scales the variables.
y = scale(as.matrix(iris[,1:3]))

#Obtains Negent Vectors for 3x3 matrix
gstar = negent3D(y,nstart=10)$vectors
}
\keyword{negent}
