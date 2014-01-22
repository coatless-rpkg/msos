\name{leprosy}
\alias{leprosy}
\docType{data}
\title{Leprosy Patients}
\description{
Dataset with leprosy patients found in Snedecor and Cochran [1989]. There were 30 patients, randomly allocated to three groups of 10. The first group received drug A, the second drug D, and the third group received a placebo. Each person had their bacterial count taken before and after receiving the treatment.}
\usage{data(leprosy)}
\format{
 A double matrix with 30 observations on the following 3 variables.
  \describe{
    \item{\code{Before}}{Bacterial count taken before receiving the treatment.}
    \item{\code{After}}{Bacterial count taken after receiving the treatment.}
    \item{\code{Group}}{Group Coding: 0 = Drug A, 1 = Drug B, 2 = Placebo}
    }
}
\source{
George W. Snedecor and William G. Cochran. Statistical Methods. Iowa State University Press, Ames, Iowa, eighth edition, 1989.
}
\keyword{datasets}
