#' Print a data.frame to HTML, with an alternate message if zero rows.
#'
#' This function is a wrapper for printdf that prints a default or 
#' user-specified message for zero-row data.frames (instead of the default
#' behavior, which is to print just the column header).
#'
#' @param df data.frame to print
#' @param norowmsg the message to print if the data.frame has zero rows
#' @param printdigits the number of digits to print for numeric variables 
#'   (passed to printdf)
#'
#' @keywords prettyprint
#' @export
#'
#' @examples
#' dfprintif(Orange)
#' dfprintif(Orange[0, ], norowmsg = "THEY ALL DIED")



dfprintif <- function(df, 
                      norowmsg = "No records to display.", 
                      printdigits = 2) {

    if(nrow(df) > 0) { dfprint(df, printdigits) } else {
        cat(norowmsg) }

}
