\name{negent}
\alias{negent}
\title{Estimating negative entropy}
\description{
Calculates the histogram-based estimate (A.2) of the negentropy,
\deqn{Negent(g) = (1/2)*(1 + log(2\pi \sigma ^2)) - Entropy(g)
}
,for a vector of observations.
}
\usage{
negent(x, K = ceiling(log2(length(x)) + 1))
}
\arguments{
  \item{x}{The n-vector of observations.}
  \item{K}{The number of bins to use in the histogram.}
}
\value{
The value of the estimated negentropy.
}
\seealso{
\code{\link{negent2D}},\code{\link{negent3D}}
}
\examples{
#NA
}
\keyword{negent}