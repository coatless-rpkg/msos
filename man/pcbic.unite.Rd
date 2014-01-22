\name{pcbic.unite}
\alias{pcbic.unite}
\title{Obtain pattern}
\description{
Returns the pattern obtained by summing \eqn{q_i} and \eqn{q_{i+1}}.
}
\usage{
pcbic.unite(pattern, index1)
}
\arguments{
  \item{pattern}{The pattern of equalities of the eigenvalues, given by the \eqn{K}-vector (\eqn{Q_1}, ... , \eqn{Q_K}) as in (13.8).}
  \item{index1}{Index \eqn{i} where \eqn{1 \le i < K}}
}
\value{
Returns a vector containing a pattern.
}
\seealso{
\code{\link{pcbic}}, \code{\link{pcbic.stepwise}}, and \code{\link{pcbic.subpatterns}}.
}
\examples{
#NA
}
\keyword{pcbic}
