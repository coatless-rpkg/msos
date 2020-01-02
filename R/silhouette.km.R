#' Silhouettes for \eqn{K}-Means Clustering
#'
#' Find the silhouettes (12.9) for K-means clustering from the data and and the
#' groups' centers.
#'
#' This function is a bit different from the silhouette function in the cluster
#' package, Maechler et al., 2005.
#'
#' @param x       The \eqn{N \times P}{N x P} data matrix.
#' @param centers The \eqn{K \times P}{K x P} matrix of centers (means) for the
#'                \eqn{K} Clusters, row \eqn{k} being the center for
#'                cluster \eqn{K}.
#'
#' @return
#' The \eqn{n}-vector of silhouettes, indexed by the observations'
#' indices.
#'
#' @export
#' @examples
#'
#' # Uses sports data.
#' data(sportsranks)
#'
#' # Obtain the K-means clustering for sports ranks.
#' kms <- kmeans(sportsranks, centers = 5, nstart = 10)
#'
#' # Silhouettes
#' sil <- silhouette.km(sportsranks, kms$centers)
silhouette.km <-
  function(x, centers) {
    dd <- NULL
    k <- nrow(centers)
    for (i in 1:k) {
      xr <- sweep(x, 2, centers[i, ], "-")
      dd <- cbind(dd, apply(xr^2, 1, sum))
    }
    dd <- apply(dd, 1, sort)[1:2, ]
    (dd[2, ] - dd[1, ]) / dd[2, ]
  }
