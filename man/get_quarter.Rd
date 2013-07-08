\name{get_quarter}
\alias{get_quarter}
\title{Returns the quarter (and its bounding dates) for a given date}
\usage{
  get_quarter(Date, offset = 0)
}
\arguments{
  \item{Date}{the input date}

  \item{offset}{the number of quarters ahead or behind to
  look}
}
\value{
  A single-row data.frame with four variables:
  \item{qtr.num}{The quarter as a numeric, 1 through 4}
  \item{qtr}{A more complete label in the format "2013 Q3"}
  \item{start.date}{The first day of the quarter}
  \item{end.date}{The last day of the quarter}
}
\description{
  This function returns the quarter name, start date, and
  end date for a given date. Optionally, the function can
  return the information for past and present quarters.
}
\examples{
# The current quarter's information
get_quarter(Sys.Date())

# Information about the next quarter
get_quarter(Sys.Date(), 1)

# Information about the last quarter
get_quarter(Sys.Date(), -1)
}

