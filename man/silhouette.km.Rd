\name{silhouette.km}
\alias{silhouette.km}
\title{Silhouettes for \eqn{K}-Means Clustering}
\description{
Find the silhouettes (12.9) for K-means clustering from the data and and the groups' centers.
}
\usage{
silhouette.km(x, centers)
}
\arguments{
  \item{x}{The \eqn{N x P} data matrix.}
  \item{centers}{The \eqn{K x P} matrix of centers (means) for the K Clusters, row \eqn{k} being the center for cluster \eqn{K}.}
}
\details{
This function is a bit different from the silhouette function in the cluster package, [Maechler et al., 2005].
}
\value{
The \eqn{n}-vector of silhouettes, indexed by the observations' indices.
}
\examples{
#Uses sports data.
data(sportsranks)
#Obtain the K-means clustering for sports ranks.
kms = kmeans(sportsranks,centers=5,nstart=10)
#silhouettes
sil = silhouette.km(sportsranks,kms$centers)
}
\keyword{kmeans}
