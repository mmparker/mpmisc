

#' Returns the quarter (and its bounding dates) for a given date
#'
#' This function returns the quarter name, start date, and end date for a given
#' date. Optionally, the function can return the information for past and
#' present quarters.
#'
#' @param Date the input date
#' @param offset the number of quarters ahead or behind to look
#' 
#' @return A single-row data.frame with four variables:
#' \item{qtr.num}{The quarter as a numeric, 1 through 4}
#' \item{qtr}{A more complete label in the format "2013 Q3"}
#' \item{start.date}{The first day of the quarter}
#' \item{end.date}{The last day of the quarter}
#' 
#' 
#' @export
#' 
#' @examples
#' # The current quarter's information
#' get_quarter(Sys.Date())
#' 
#' # Information about the next quarter
#' get_quarter(Sys.Date(), 1)
#' 
#' # Information about the last quarter
#' get_quarter(Sys.Date(), -1)
#' 


get_quarter <- function(Date, offset = 0) {


    # Make sure Date is a Date
    checked.Date <- tryCatch(as.Date(Date), 
        error = function(e) { 
            stop("The Date argument doesn't seem to be correctly formatted; try as.Date(yourdate) to make sure R can recognize it as a date.") } 
    )


    # Make sure offset is a single integer
    if(!length(offset) == 1) {
        stop("This function can only handle one offset; you submitted ", 
             length(offset), 
             ".",
             " Please check your inputs and try again.")
    }

    if(!is.numeric(offset)) {
        stop("The offset argument should be numeric; you've passed a ",
             class(offset),
             ".",
             " Please check your inputs and try again.")
    }
    

    # If there's an offset, calculate the corresponding date
    offset.date <- checked.Date %m+% months(offset * 3)
    

    # Calculate start and end dates for quarters in offset.date's year - 
    # thanks for not being too insane for once, Gregorian calendar!

    qtr.dates <- data.frame(

        qtr.num = 1:4,
                            
        qtr = paste(year(offset.date),
                    1:4,
                    sep = " Q"),
                            
        start.date = as.Date(paste(year(offset.date),
                                   c("-01-01", "-04-01", "-07-01", "-10-01"),
                                   sep = "")), 

        end.date = as.Date(paste(year(offset.date),
                                 c("-03-31", "-06-30", "-09-30", "-12-31"),
                                 sep = ""))

    )


    # Calculate the offset date's quarter and return the appropriate record
    qtr.dates[qtr.dates$qtr.num %in% quarter(offset.date), ]


    
}
