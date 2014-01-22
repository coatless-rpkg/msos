\name{qda}
\alias{qda}
\title{
Quadratic discrimination
}
\description{
The function returns the elements needed to calculate the quadratic discrimination in (11.48). Use the output from this function in predict.qda (Section A.3.2) to find the predicted groups.
}
\usage{
qda(x, y)
}
\arguments{
  \item{x}{The \eqn{N x P} data matrix.}
  \item{y}{The \eqn{N}-vector of group identities, assumed to be given by the numbers 1,...,\eqn{K} for \eqn{K} groups.}
}
\value{
A list with the following components:
\item{Mean}{A \eqn{P x K} matrix, where column \eqn{K} contains the coefficents \eqn{a_k} for (11.31). The final column is all zero.}
\item{Sigma}{A \eqn{K x P x P} array, where the Sigma[k,,] contains the sample covariance matrix for group \eqn{k}, \eqn{\hat{\Sigma_k}.}}
\item{c}{The \eqn{K}-vector of constants \eqn{c_k} for (11.48).}
}
\seealso{
\code{\link{predict_qda}} and \code{\link{lda}}
}
\examples{
#Iris example
x.iris = as.matrix(iris[,1:4])
#Gets group vector (1,...,1,2,...,2,3,...,3)
y.iris = rep(1:3,c(50,50,50)) 
qd.iris = qda(x.iris,y.iris)
}
\keyword{qda}
