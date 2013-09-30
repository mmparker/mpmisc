\name{get_week_start}
\alias{get_week_start}
\title{Identify the start of the week for a vector of dates.}
\usage{
  get_week_start(dates, start.day = "Monday",
    weeks.back = 0)
}
\arguments{
  \item{dates}{a vector of dates}

  \item{start.day}{the arbitrary first day of the week -
  defaults to Monday}

  \item{weeks.back}{how many weeks in the past to evaluate}
}
\description{
  This function returns the date of the start of the week
  for any given date; "start of the week" is defined as any
  arbitrary day of the week. Can also calculate the start
  of the week any number of weeks in the past; I use this
  while aggregating data for several weeks to ensure that
  the first week included is always a full week (for
  example, if I aggregated data for the last eight weeks on
  a Friday, the week furthest back would only have its
  Friday data included - if I get_week_start for that date,
  I ensure the full week's data is aggregated).
}
\examples{
# The start of the current week
get_week_start(Sys.Date())

# Sunday instead of Monday
get_week_start(Sys.Date(), start.day = "Sunday")

# Start of the week eight weeks ago
get_week_start(Sys.Date(), weeks.back = 8)
}

