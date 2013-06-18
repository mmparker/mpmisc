



get_prior_monday <- function(Date, weeks.back = 1) {

    # Warn users to switch to get_week_start
    warning("get_prior_monday() is obsolete - please switch to the function get_week_start()")

    # Get the names of the next seven days
    next.seven <- seq(from = Date, length.out = 7, by = "day")


    # The prior Monday is the next Monday minus seven days
    prior.monday <- next.seven[format(next.seven, "%A") %in% "Monday"] - 
                    (weeks.back * 7)
    
}
