
#' Convert units of area
#' This function converts numeric values from one unit of area to another.
#' @param x Numeric vector containing the values to be converted.
#' @param from Character specifying the current units of 'x' (using the symbol).
#' @param to Character specifying the new units of 'x' (using the symbol).
#' @return Numeric vector with values in the new units.
#' @details
#' The function takes a numeric vector 'x' and two character vectors 'from' and 'to' to specify
#' the units for conversion. The conversion is performed based on  table of conversion
#' factors for area units.
#' @examples
#' # Convert 10 acres to square yards
#' myarea(x = 10, from = "ac", to = "sq yd")
#' # Convert 100 square yards to acres
#'myarea(x = 100, from = "sq yd", to = "ac")
#' @export
myarea <- function(x, from, to) {

  conversion_factors <- data.frame(
    from = c("ac", "sq yd"),
    to = c("sq yd", "ac"),
    factor = c(4840, 1/4840)
  )

  valid_conversion <- from %in% conversion_factors$from & to %in% conversion_factors$to

  if (!valid_conversion) {
    stop("Invalid conversion from ", from, " to ", to)
  }

  conversion_factor <- conversion_factors$factor[conversion_factors$from == from]

  result <- x * conversion_factor

  return(result)
}


area_conversions <- read.csv("C:/Users/nishi/Downloads/uconvert/data-raw/area.csv")




