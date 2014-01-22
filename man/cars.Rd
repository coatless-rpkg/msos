\name{cars}
\alias{cars}
\docType{data}
\title{Automobile Data from Consumer Reports}
\description{
The data set cars [Consumers' Union, 1990] contains 111 models of automobile. The original data can be found in the S-Plus? [TIBCO Software Inc., 2009] data frame cu.dimensions. In cars, the variables have been normalized to have medians of 0 and median absolute deviations (MAD) of 1.4826 (the MAD for a N(0, 1)).
}
\usage{data(cars)}  								
\format{
 A double matrix with 111 observations on the following 11 variables.
  \describe{
    \item{\code{Length}}{Overall length, in inches, as supplied by manufacturer}
    \item{\code{Wheelbase}}{Length of wheelbase, in inches, as supplied by manufacturer.}
    \item{\code{Width}}{Width of car, in inches, as supplied by manufacturer.}
    \item{\code{Height}}{Height of car, in inches, as supplied by manufacturer}
    \item{\code{FrontHd}}{Distance between the car's head-liner and the head of a 5 ft. 9 in. front seat passenger, in inches, as measured by CU.}
    \item{\code{RearHd}}{Distance between the car's head-liner and the head of a 5 ft 9 in. rear seat passenger, in inches, as
measured by CU}
    \item{\code{FrtLegRoom}}{Maximum front leg room, in inches, as measured by CU.}
    \item{\code{RearSeating}}{Rear fore-and-aft seating room, in inches, as measured by CU.}
    \item{\code{FrtShld}}{Front shoulder room, in inches, as measured by CU.}
    \item{\code{RearShld}}{Rear shoulder room, in inches, as measured by CU}
    \item{\code{Luggage}}{Luggage Area in Car}
    }
}
\source{
Consumers' Union. Body dimensions. Consumer Reports, April 286 - 288, 1990.
}
\keyword{datasets}
