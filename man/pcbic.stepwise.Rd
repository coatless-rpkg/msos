\name{pcbic.stepwise}
\alias{pcbic.stepwise}
\title{Choosing a good pattern}
\description{
Uses the stepwise procedure described in Section 13.1.4 to find a pattern for a set of observed eigenvalues with good BIC value.
}
\usage{
pcbic.stepwise(eigenvals, n)
}
\arguments{
  \item{eigenvals}{The \eqn{Q}-vector of eigenvalues of the covariance matrix, in order from largest to smallest.}
  \item{n}{The degrees of freedom in the covariance matrix.}
}
\value{A list with the following components:
\item{Patterns}{A list of patterns, one for each value of length K.}
\item{BICs}{A vector of the BIC's for the above patterns.}
\item{BestBIC}{The best (smallest) value among the BIC's in BICs.}
\item{BestPattern}{The pattern with the best BIC.}
\item{lambdaHat}{A \eqn{Q}-vector containing the MLE's for the eigenvalues for the pattern with the best BIC.}
}
\seealso{
\code{\link{pcbic}}, \code{\link{pcbic.unite}}, and \code{\link{pcbic.subpatterns}}.
}
\examples{
#Build cars1
require("mclust")
mcars = Mclust(cars)
cars1 = cars[mcars$classification==1,]
xcars = scale(cars1)
eg = eigen(var(xcars))
pcbic.stepwise(eg$values,95)
}
\keyword{pcbic}
