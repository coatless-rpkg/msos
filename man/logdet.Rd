\name{logdet}
\alias{logdet}
\title{
Log Determinant
}
\description{
Takes the log determinant of a square matrix. Log is that of base e sometimes referred to as ln().
}
\usage{
logdet(a)
}
\arguments{
  \item{a}{Square matrix (\eqn{Q x Q})}
}
\value{
Returns a single-value double.
}
\seealso{\code{\link{tr}} and \code{\link{fillout}}
}
\examples{
#Identity Matrix of size 2
logdet(diag(c(2,2)))
}