# Set up default print arguments for printing tables:
# xtable() makes data.frames more suitable for display
# format() converts all of the data.frame variables to character*;
# print() writes the xtable object to HTML

# *print() for xtable throws a tantrum over Date and POSIXct variables,
# so they have to be converted to character before printing 

dfprint <- function(df, printdigits = 2) {

    require(xtable)

    print(
        xtable(format(df, 
                      na.encode = FALSE, 
                      digits = printdigits, 
                      nsmall = printdigits), 
               align = c("l", "l", rep("c", ncol(df) - 1))
        ),
        type = "html",
        include.rownames = FALSE,
        NA.string = "-")
}

