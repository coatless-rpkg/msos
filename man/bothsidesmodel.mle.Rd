\name{bothsidesmodel.mle}
\alias{bothsidesmodel.mle}
\title{Calculate the maximum likelihood estimates}
\description{
This function fits the model using maximum likelihood. It takes an optional pattern matrix \eqn{P} as in (6.51), which specifies which \eqn{\beta _{ij}}'s are zero. See Listing A.6 for the code.
}
\usage{
bothsidesmodel.mle(x, y, z = diag(qq),
pattern = matrix(1,nrow = p,ncol = l))
}
\arguments{  
  \item{x}{An \eqn{N x P} design matrix.}
  \item{y}{The \eqn{N x Q} matrix of observations.}
  \item{z}{A \eqn{Q x L} design matrix}
  \item{pattern}{An optional \eqn{N x P} matrix of 0's and 1's indicating which elements of \eqn{\beta} are allowed to be nonzero.}
}
\value{
A list with the following components:
\item{Beta}{The least-squares estimate of \eqn{\beta}.}
\item{SE}{The \eqn{P x L} matrix with the \eqn{ij}th element being the standard error of \eqn{\hat{\beta}_{ij}}.}
\item{T}{The \eqn{P x L} matrix with the \eqn{ij}th element being the t-statistic based on \eqn{\hat{\beta}_{ij}}.}
\item{Covbeta}{The estimated covariance matrix of the \eqn{\hat{\beta}_{ij}}'s.}
\item{df}{A \eqn{p}-dimensional vector of the degrees of freedom for the t-statistics, where the \eqn{j}th component contains the degrees of freedom for the \eqn{j}th column of \eqn{\hat{\beta}}.}
\item{Sigmaz}{The \eqn{Q x Q} matrix \eqn{\hat{\Sigma}_z}.}
\item{Cx}{The \eqn{Q x Q} residual sum of squares and crossproducts matrix.}
\item{ResidSS}{The dimension of the model, counting the nonzero \eqn{\beta _{ij}}'s and components of \eqn{\Sigma _z}.}
\item{Deviance}{Mallow's \eqn{C_p} Statistic.}
\item{Dim}{The dimension of the model, counting the nonzero \eqn{\beta _{ij}}'s and components of \eqn{\Sigma_z}}
\item{AICc}{The corrected AIC criterion from (9.87) and (aic19)}
\item{BIC}{The BIC criterion from (9.56).}
}
\seealso{
\code{\link{bothsidesmodel.chisquare}},\code{\link{bothsidesmodel.df}},\code{\link{bothsidesmodel.hotelling}},\code{\link{bothsidesmodel.lrt}}, and \code{\link{bothsidesmodel}}.
}
\examples{
data(mouths)
x = cbind(1,mouths[,5])
y = mouths[,1:4]
z = cbind(1,c(-3,-1,1,3),c(-1,1,1,-1),c(-1,3,-3,1))
bothsidesmodel.mle(x,y,z,cbind(c(1,1),1,0,0))
}
\keyword{bothsidesmodel}
