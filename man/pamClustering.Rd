% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{pamClustering}
\alias{pamClustering}
\title{Calculate clusters based on PAM clustering}
\usage{
pamClustering(scores, k)
}
\arguments{
\item{scores}{A \code{\link[Matrix:Matrix]{Matrix::Matrix()}} of (distance) scores}

\item{k}{numerical, the number of centers to start with. This number will
correlate with the resulting number of clusters.}
}
\value{
A \code{list} of clusters
}
\description{
This function performs Partioning aroung Medoids clustering on a set of
scores.
}
\examples{
## Mock example showing how the data should look like
scores <- Matrix::Matrix(stats::runif(100, min = 0, max = 1), 10, 10)
rownames(scores) <- colnames(scores) <- c("a", "b", "c", "d", "e",
                                "f", "g", "h", "i", "j")
cluster <- pamClustering(scores, k = 3)

## Example using the data available in the package
data(scores_macrophage_topGO_example_small,
     package = "GeDi",
     envir = environment())

cluster <- pamClustering(scores_macrophage_topGO_example_small,
                               k = 5)
}
