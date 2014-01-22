\name{pcbic.subpatterns}
\alias{pcbic.subpatterns}
\title{Obtain the best subpattern among the patterns.
}
\description{
Obtains the best pattern and its BIC among the patterns obtainable by summing two consecutive terms in pattern0. 
}
\usage{
pcbic.subpatterns(eigenvals, n, pattern0)
}
\arguments{
\item{eigenvals}{The \eqn{Q}-vector of eigenvalues of the covariance matrix, in order from largest to smallest.}
  \item{n}{The degrees of freedom in the covariance matrix.}
  \item{pattern0}{The pattern of equalities of the eigenvalues, given by the \eqn{K}-vector (\eqn{Q_1}, ... , \eqn{Q_K}) as in (13.8).}
}
\value{
\item{pattern}{A double matrix containing the pattern evaluated.}
\item{bic}{A vector containing the BIC for the above pattern matrix.}
}
\seealso{
\code{\link{pcbic}}, \code{\link{pcbic.stepwise}}, and \code{\link{pcbic.unite}}.
}
\examples{
#NA
}
\keyword{pcbic}