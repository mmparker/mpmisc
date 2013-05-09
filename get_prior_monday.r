



get_prior_monday <- function(Date) {

    # Get the names of the next seven days
    next_seven <- seq(from = Date, length.out = 7, by = "day")


    # The prior Monday is the next Monday minus seven days
    prior_monday <- next_seven[format(next_seven, "%A") %in% "Monday"] - 7
    
}
