
# This is a wrapper for dfprint() that prints an alternate message if
# the data.frame passed has no records.

dfprintif <- function(df, 
                      norowmsg = "No records to display.", 
                      printdigits = 2) {

    if(nrow(df) > 0) { dfprint(df, printdigits) } else {
        cat(norowmsg) }

}
