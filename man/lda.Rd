\name{lda}
\alias{lda}
\title{Linear Discrimination}
\description{Finds the coefficients \eqn{a_k} and constants \eqn{c_k} for Fisher's linear discrimination function \eqn{d_k} in (11.31) and (11.32).
}
\usage{
lda(x, y)
}
\arguments{
  \item{x}{The \eqn{N x P} data matrix.}
  \item{y}{The \eqn{N}-vector of group identities, assumed to be given by the numbers 1,...,\eqn{K} for \eqn{K} groups.}
}
\value{
A list with the following components:
\item{a}{A \eqn{P x K} matrix, where column \eqn{K} contains the coefficents \eqn{a_k} for (11.31). The final column is all zero.}
\item{c}{The \eqn{K}-vector of constants \eqn{c_k} for (11.31). The final value is zero.}
}
\seealso{
\code{\link{sweep}}
}
\examples{
#Iris example
x.iris = as.matrix(iris[,1:4])
#Gets group vector (1,...,1,2,...,2,3,...,3)
y.iris = rep(1:3,c(50,50,50)) 
ld.iris = lda(x.iris,y.iris)
}
\keyword{lda}
