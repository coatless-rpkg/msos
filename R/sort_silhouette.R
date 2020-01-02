#' Sort the silhouettes by group
#'
#' Sorts the silhouettes, first by group, then by value, preparatory to
#' plotting.
#'
#' @param sil     The \eqn{n}-vector of silhouette values.
#' @param cluster The \eqn{n}-vector of cluster indices.
#'
#' @return
#' The \eqn{n}-vector of sorted silhouettes.
#'
#' @seealso \code{\link{silhouette.km}}
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
#' ssil <- sort_silhouette(sil, kms$cluster)
sort_silhouette <-
  function(sil, cluster) {
    ss <- NULL
    ks <- sort(unique(cluster))
    for (k in ks) {
      ss <- c(ss, sort(sil[cluster == k]))
    }
    ss
  }
