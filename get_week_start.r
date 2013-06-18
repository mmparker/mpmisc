



get_week_start <- function(Date, start.day = "Monday", weeks.back = 0) {


    # If Date matches the start.day, return it (minus the indicated weeks)
    if(format(Date, "%A") %in% start.day) { return(Date - (weeks.back * 7)) }

    # Otherwise, find the previous start day
    last.six <- Date - 1:6
    last.start <- last.six[format(last.six, "%A") %in% start.day]

    # Jump back the indicated number of weeks
    week.start <- last.start - (weeks.back * 7)

    week.start
    
}
