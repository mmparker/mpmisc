\name{calc_percent}
\alias{calc_percent}
\title{Calculates display-ready percentages.}
\usage{
  calc_percent(num, denom, digits = getOption("digits"),
    zerodenom = "--")
}
\arguments{
  \item{num}{The numerator}

  \item{denom}{The denominator}

  \item{digits}{The number of decimal places to return}

  \item{zerodenom}{The value to return when the denominator
  is zero}
}
\value{
  A *character* vector of the percentages.
}
\description{
  Given vectors of numerators, denominators, and number of
  decimal places, this function returns correctly-rounded
  percentages as a character vector. Returns a user-defined
  value when the denominator is zero.
}
\examples{
# Basic examples
calc_percent(num = c(1, 20, 30, 0, 0),
             denom = c(1, 30, 20, 10, 0))

# Tweaking the results
calc_percent(num = c(1, 20, 30, 0, 0),
             denom = c(1, 30, 20, 10, 0),
             digits = 2,
             zerodenom = "zip")
}

