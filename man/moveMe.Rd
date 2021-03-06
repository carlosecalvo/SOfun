% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/moveMe.R
\name{moveMe}
\alias{moveMe}
\title{Reorders the Contents of a Vector}
\usage{
moveMe(invec, movecommand)
}
\arguments{
\item{invec}{The input vector}

\item{movecommand}{The command that describes how you want to shuffle the
vector. See \emph{Details}.}
}
\value{
A vector.
}
\description{
Shuffle the order of a vector around using natural language statements.
}
\details{
This can be a useful function for reordering the columns of a
\code{data.frame} or \code{data.table} in a convenient manner. In such
cases, the \code{invec} would be \code{names(your_data_frame)}. When using
\code{data.table}s, remember to use \code{setcolorder} to avoid copying.

The \code{movecommand} argument is specified in the form of \code{"a, b
before f"}. The positions to move are: \itemize{ \item \strong{first}: move
the specified items to the first postion. \item \strong{last}: move the
specified items to the last position. \item \strong{before}: move the
specified items before the value mentioned. \item \strong{after}: move the
specified items after the value mentioned. } Multiples are allowed:
\itemize{ \item Specify multiple values to be moved by separating them with
a comma. \item Chain multiple move commands by separating them with a
semicolon. }
}
\examples{

myvec <- letters[1:10]
myvec
moveMe(myvec, "a last; b, e, g before d; c first; h after j")

x <- names(mtcars)
x
moveMe(x, "hp first; cyl after drat; vs, am, gear before mpg; wt last")

}
\references{
\url{http://stackoverflow.com/a/18420673/1270695}
}
\author{
Ananda Mahto
}
