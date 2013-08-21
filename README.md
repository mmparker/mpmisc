
## mpmisc

This package provides a collection of functions that I've found useful,
with a focus on generating reports with R, Markdown, and knitr. 

 - `dfprintif`: a function for pretty-printing data.frames in HTML, with
   customizable messages for zero-row data.frames. A `data.frame` wrapped in
   a `format` wrapped in an `xtable` wrapped in a `print`... with sensible
   defaults.

 - `get_week_start`: returns the date of the Monday prior to the given date.
   Can also return the date of Monday any number of weeks prior to the given
   date. This helps when with weekly data aggregation - for example, if I'm
   aggregating data over the last four weeks and running the report on Friday,
   the oldest week will only have its Friday data included. Using this function
   ensures that the oldest week is always a full one.

 - `get_quarter`: computes the quarter label, 
   start date, and end date associated with a particular date. Includes an
   offset argument for evaluating quarters past and future. This makes it easier
   to get associated dates and plotworthy labels when working on quarterly
   reports.
