


# Connect to the right TBdbPlus ODBC drivers, regardless of which
# version of R is running

connect_to_tbdbplus <- function() {

    require(RODBC)

    arch <- R.Version()$arch

    if(arch %in% "x86_64") { 
        return(odbcConnect("tbdbplus64"))
    } else {
        return(odbcConnect("tbdbplus32"))
    }

}
