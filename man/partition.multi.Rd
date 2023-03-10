% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/partition.multi.R
\name{partition.multi}
\alias{partition.multi}
\title{Create Partitions of a multivariate array of objects.}
\usage{
partition.multi(data, alpha = 0.05, .debug = FALSE)
}
\arguments{
\item{data}{A list of data.frames or matrices corresponding to individual observations of glass fragment features.}

\item{alpha}{Significance parameter "[0,1]". Higher values are more likely to partition the
array further.}

\item{.debug}{Runs debugging.}
}
\value{
A list of groupings and the tree formed.
}
\description{
Partitions the array of assumed glass fragment chemical compositions and features into statistically
significant groups.
}
\examples{

test.data = prepare_data(glass, 1)[1:3]
part = partition.multi(test.data)
plot(part)

set.seed(123)
test.data.random = prepare_data(glass, 1)
test.data.random = test.data.random[sample(1:length(test.data.random), 5)]
part = partition.multi(test.data.random)
part$groups


}
