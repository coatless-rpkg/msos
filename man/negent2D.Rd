\name{negent2D}
\alias{negent2D}
\title{
Maximizing negentropy for \eqn{q = 2} dimensions
}
\description{
Searches for the rotation that maximizes the estimated negentropy of the first column of the rotated data, for \eqn{q = 2} dimensional data. 
}
\usage{
negent2D(y, m = 100)
}
\arguments{
  \item{y}{The \eqn{n ? 2} data matrix.}
  \item{m}{The number of angles (between \eqn{0} and \eqn{\pi}) over which to search.}
}
\value{
A list with the following components:
\item{vectors}{The \eqn{2 ? 2} orthogonal matrix G that optimizes the negentropy.}
\item{values}{Estimated negentropies for the two rotated variables. The largest is first.}
}
\seealso{
\code{\link{negent}},\code{\link{negent3D}}
}
\examples{
data(iris)
#Centers and scales the variables.
y = scale(as.matrix(iris[,1:2]))

#Obtains Negent Vectors for 2x2 matrix
gstar = negent2D(y,m=10)$vectors
}
\keyword{negent}
