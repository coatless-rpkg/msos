\name{fillout}
\alias{fillout}
\title{Make a square matrix}
\description{
The function fillout takes a \eqn{Q x (Q-L)} matrix \eqn{Z} and fills it out so that it is a square matrix \eqn{Q x Q}.
}
\usage{
fillout(z)
}
\arguments{
  \item{z}{A \eqn{Q x (Q-L)} matrix}
}
\value{
Returns a square matrix \eqn{Q x Q}
}
\seealso{
\code{\link{tr}},\code{\link{logdet}}
}
\examples{
#Creates a 3x3 Matrix from 3x2 Data
fillout(cbind(c(1,2,3),c(4,5,6)))
}
