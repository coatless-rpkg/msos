\name{predict_qda}
\alias{predict_qda}
\title{Quadratic discrimination prediction}
\description{The function uses the output from the function qda (Section A.3.2) and a \eqn{P}-vector \eqn{X}, and calculates the predicted group for this \eqn{X}.}
\usage{
predict_qda(qd, newx)
}
\arguments{
  \item{qd}{The output from \code{\link{qda}}.}
  \item{newx}{A \eqn{P}-vector \eqn{X} whose components match the variables used in the \code{\link{qda}} function.
}
}
\value{
A \eqn{K}-vector of the discriminant values \eqn{d_k^Q(X)} in (11.48) for the given \eqn{X}.
}
\seealso{
\code{\link{qda}}
}
\examples{
#Iris example
data(iris)
x.iris = as.matrix(iris[,1:4])
n = nrow(x.iris)
#Gets group vector (1,...,1,2,...,2,3,...,3)
y.iris = rep(1:3,c(50,50,50)) 
qd.iris = qda(x.iris,y.iris)
yhat.qd = NULL
for (i in 1:n) {
yhat.qd = c(yhat.qd,imax(predict_qda(qd.iris,x.iris[i,])))
}
table(yhat.qd,y.iris)
}
\keyword{qda}
