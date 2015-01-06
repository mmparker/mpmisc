#' Print a data.frame to HTML.
#'
#' This function simplifies printing data.frames to HTML.
#'
#' @param df data.frame to print
#' @param printdigits the number of digits to print for numeric variables 
#' 
#' @keywords prettyprint
#' @export
#' 
#' @examples
#' dfprint(Orange)

dfprint <- function(df, printdigits = 2) {

    print(
        xtable(format(df, 
                      na.encode = FALSE, 
                      digits = printdigits, 
                      nsmall = printdigits), 
               align = c("l", "l", rep("c", ncol(df) - 1))
        ),
        type = "html",
        include.rownames = FALSE,
        NA.string = "--",
        comment = FALSE)
}

