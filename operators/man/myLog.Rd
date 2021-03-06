% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log.R
\name{myLog}
\alias{myLog}
\title{myLog}
\usage{
myLog(x)
}
\arguments{
\item{x}{a real number}

\item{base}{the base of logarithms}
}
\value{
a error message if x is non-positive; the result of log of x otherwise
}
\description{
myLog computes natural logarithms for positive x,
show error message for non-positive x
}
\examples{
\dontrun{
a = myLog(-1)
b = myLog(4)
}

}
