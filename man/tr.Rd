\name{tr}
\alias{tr}
\title{Trace of a Matrix}
\description{
Takes the traces of a matrix by extracting the diagonal entries and then summing over.
}
\usage{tr(x)}
\arguments{
  \item{x}{Square matrix (\eqn{Q x Q})}
}
\value{Returns a single-value double.}
\seealso{
\code{\link{logdet}},\code{\link{fillout}}
}
\examples{
#Identity Matrix of size 4, gives trace of 4.
tr(diag(4))
}
