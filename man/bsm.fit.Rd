\name{bsm.fit}
\alias{bsm.fit}
\title{
Helper function to determine \eqn{\beta} estimates for MLE regression with patterning.
}
\description{
Generates \eqn{\beta} estimates for MLE using a conditioning approach with patterning support.
}
\usage{
bsm.fit(x, y, z, pattern)
}
\arguments{
  \item{x}{An \eqn{N x P+F} design matrix, where F is the number of columns conditioned on. This is equivalent to the multiplication of xyzb.}
  \item{y}{The \eqn{N x Q-F} matrix of observations, where F is the number of columns conditioned on. This is equivalent to the multiplication of Yz_a.}
  \item{z}{A \eqn{Q-F x L} design matrix, where F is the number of columns conditioned on.}
  \item{pattern}{An optional \eqn{N-F x F} matrix of 0's and 1's indicating which elements of \eqn{\beta} are allowed to be nonzero.}
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
\code{\link{bothsidesmodel.mle}} and \code{\link{bsm.simple}}
}
\examples{
#NA
}
\keyword{bothsidesmodel}
\keyword{mle}
