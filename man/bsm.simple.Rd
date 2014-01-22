\name{bsm.simple}
\alias{bsm.simple}
\title{
Helper function to determine \eqn{\beta} estimates for MLE regression.
}
\description{
Generates \eqn{\beta} estimates for MLE using a conditioning approach.
}
\usage{
bsm.simple(x, y, z)
}
\arguments{
  \item{x}{An \eqn{N x P+F} design matrix, where F is the number of columns conditioned on. This is equivalent to the multiplication of xyzb.}
  \item{y}{The \eqn{N x Q-F} matrix of observations, where F is the number of columns conditioned on. This is equivalent to the multiplication of Yz_a.}
  \item{z}{A \eqn{Q-F x L} design matrix, where F is the number of columns conditioned on.}
}
\details{
The technique used to calculate the estimates is described in section 9.3.3.
}
\value{
A list with the following components:
\item{Beta}{The least-squares estimate of \eqn{\beta}.}
\item{SE}{The \eqn{P+F x L} matrix with the \eqn{ij}th element being the standard error of \eqn{\hat{\beta}_ij}.}
\item{T}{The \eqn{P+F x L} matrix with the \eqn{ij}th element being the t-statistic based on \eqn{\hat{\beta}_ij}.}
\item{Covbeta}{The estimated covariance matrix of the \eqn{\hat{\beta}_ij}'s.}
\item{df}{A \eqn{p}-dimensional vector of the degrees of freedom for the t-statistics, where the \eqn{j}th component contains the degrees of freedom for the \eqn{j}th column of \eqn{\hat{\beta}}.}
\item{Sigmaz}{The \eqn{Q-F x Q-F} matrix \eqn{\hat{\Sigma}_z}.}
\item{Cx}{The \eqn{Q x Q} residual sum of squares and crossproducts matrix.}
}
\seealso{
\code{\link{bothsidesmodel.mle}} and \code{\link{bsm.fit}}
}
\examples{
#Taken from section 9.3.3 to show equivalence to methods.
data(mouths)
x = cbind(1,mouths[,5])
y = mouths[,1:4]
z = cbind(1,c(-3,-1,1,3),c(-1,1,1,-1),c(-1,3,-3,1))
yz = y\%*\%solve(t(z))
yza = yz[,1:2]
xyzb = cbind(x,yz[,3:4])
lm(yza ~ xyzb - 1)
bsm.simple(xyzb,yza,diag(2))
}
\keyword{bothsidesmodel}
\keyword{mle}
