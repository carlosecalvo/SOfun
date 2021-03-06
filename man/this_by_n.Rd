% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/this_by_n.R
\name{this_by_n}
\alias{this_by_n}
\title{Apply This By Every n Values}
\usage{
this_by_n(invec, n = 3, FUN = sum, fill = NA, include_first = TRUE)
}
\arguments{
\item{invec}{The input vector.}

\item{n}{By how many values?}

\item{FUN}{The function to apply to each set of n values.}

\item{fill}{The value to padd the resulting vector with. Defaults to \code{NA}.}

\item{include_first}{Logical. Should the first value be included. Defaults to \code{TRUE}.}
}
\value{
A vector the same length as the input vector.
}
\description{
Applies a function by every n values to a vector.
}
\examples{

x <- c(1, 2, 3, 4, 7, 9, 2, 4)
this_by_n(x, 3, mean)
this_by_n(x, 2, max)
this_by_n(x, 4, min)
this_by_n(letters[1:10], 5, toString)

}
\references{
\url{http://stackoverflow.com/q/34563693/1270695}
}
\author{
Ananda Mahto
}
