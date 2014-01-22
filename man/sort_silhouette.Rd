\name{sort_silhouette}
\alias{sort_silhouette}
\title{Sort the silhouettes by group}
\description{Sorts the silhouettes, first by group, then by value, preparatory to plotting.}
\usage{
sort_silhouette(sil, cluster)
}
\arguments{
  \item{sil}{The \eqn{n}-vector of silhouette values.}
  \item{cluster}{The \eqn{n}-vector of cluster indices.}
}
\value{
The \eqn{n}-vector of sorted silhouettes.
}
\examples{
#Uses sports data.
data(sportsranks)
#Obtain the K-means clustering for sports ranks.
kms = kmeans(sportsranks,centers=5,nstart=10)
#silhouettes
sil = silhouette.km(sportsranks,kms$centers)
ssil = sort_silhouette(sil,kms$cluster)
}
\keyword{kmeans}