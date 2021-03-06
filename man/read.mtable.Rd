% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.mtable.R
\name{read.mtable}
\alias{read.mtable}
\title{Read Data from a File Containing Multiple Datasets}
\usage{
read.mtable(inFile, chunkId, ...)
}
\arguments{
\item{inFile}{The path to the input file}

\item{chunkId}{A pattern in the text that identifies the "header" that
indicates the start of a new dataset}

\item{\dots}{Other arguments to be passed to \code{read.table}}
}
\value{
A \code{list} of \code{data.frame}s
}
\description{
Sometimes, a single file might have multiple datasets, each separated with a
"header" of some sort. This function attempts to read the most basic of
those types of files.
}
\note{
\code{names} are added to the resulting \code{list}, but these are not
likely to be syntactically valid R names.
}
\examples{

x <- tempfile()
cat("'Experiment Name: Here Be',,", "1,2,3", "4,5,6", "7,8,9",
    "'Experiment Name: The Dragons',,", "10,11,12", "13,14,15",
    "16,17,18", file = x, sep = "\n")

read.mtable(x, "Experi", sep = ",")

cat("Header: Boston city data",
    "Month    Data1    Data2    Data3",
    "1        1.5      9.1342   8.1231",
    "2        12.3     12.31    1.129",
    "", "", "Header: Chicago city data",
    "Month    Data1    Data2    Data3",
    "1        1.5      9.1342   8.1231",
    "2        12.3     12.31    1.129",
    file = x, sep = "\n")

read.mtable(x, "Header", header = TRUE)

}
\references{
\url{http://stackoverflow.com/a/11530036/1270695},
\url{http://stackoverflow.com/a/11555316/1270695}
}
\author{
Ananda Mahto
}
