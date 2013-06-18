\name{dfprintif}
\alias{dfprintif}
\title{Print a data.frame to HTML, with an alternate message if zero rows.}
\usage{
  dfprintif(df, norowmsg = "No records to display.",
    printdigits = 2)
}
\arguments{
  \item{df}{data.frame to print}

  \item{norowmsg}{the message to print if the data.frame
  has zero rows}

  \item{printdigits}{the number of digits to print for
  numeric variables (passed to printdf)}
}
\description{
  This function is a wrapper for printdf that prints a
  default or user-specified message for zero-row
  data.frames (instead of the default behavior, which is to
  print just the column header).
}
\examples{
dfprintif(Orange)
dfprintif(Orange[0, ], norowmsg = "THEY ALL DIED")
}
\keyword{prettyprint}

