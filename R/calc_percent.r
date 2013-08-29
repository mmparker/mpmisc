

#' Calculates display-ready percentages.
#'
#' Given vectors of numerators, denominators, and number of decimal places,
#' this function returns correctly-rounded percentages as a character vector.
#' Returns a user-defined value when the denominator is zero. 
#'
#' @param num The numerator
#' @param denom The denominator
#' @param digits The number of decimal places to return
#' @param zerodenom The value to return when the denominator is zero
#' 
#' @return A *character* vector of the percentages.
#' 
#' @export
#' 
#' @examples
#' # Basic examples
#' calc_percent(num = c(1, 20, 30, 0, 0),
#'              denom = c(1, 30, 20, 10, 0))
#' 
#' # Tweaking the results
#' calc_percent(num = c(1, 20, 30, 0, 0),
#'              denom = c(1, 30, 20, 10, 0),
#'              digits = 2,
#'              zerodenom = "zip")
#' 

calc_percent <- function(num, 
                         denom, 
                         digits = getOption("digits"), 
                         zerodenom = "--") {

    # Calculate the percentages, insert zerodenom where necessary
    percent <- ifelse(denom %in% 0,
                      yes = zerodenom,
                      no = round((num / denom) * 100, digits)
    )

    # Since values with zero denominators can be characters,
    # *always* return a character - for consistency's sake.
    # If the user wants a numeric, it's not hard to get.
    as.character(percent)

}





