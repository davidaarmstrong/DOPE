\name{augment}
\alias{augment}
\alias{augmentcpp}
\title{Augment a covariance matrix.}
\description{Takes a valid k by k covariance matrix and produces a valid k+1 by k+1 covariance matrix, uniformly drawn from that set, with the upper k by k submatrix being the input.  Currently implimented in both R and C++.  The C++ version is faster while the R version is easier for the expected user base to read and modify as needed.}
\usage{
augment(covm, buff = sqrt(.Machine$double.eps))
augmentcpp(covm, buff = sqrt(.Machine$double.eps))
}
\arguments{
  \item{covm}{
    A valid k by k covariance matrix.
  }
  \item{buff}{
    numeric.  A buffer to avoid numeric positive non-definiteness.
  }
}

\value{
   A valid k by k covariance matrix.
}
\examples{
  set.seed(1234)
  corm <- RandomCormCPP(5)
  augmentcpp(corm)
}

