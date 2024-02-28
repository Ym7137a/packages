
#' Convert units of length
#' This function converts numeric values from one unit of length to another.
#' @param x Numeric vector containing the values to be converted.
#' @param from Character specifying the current units of 'x' (using the symbol).
#' @param to Character specifying the new units of 'x' (using the symbol).
#' @return Numeric vector with values in the new units.
#' @details
#' The function takes a numeric vector 'x' and two character vectors 'from' and 'to' to specify
#' the units for conversion. The conversion is based on data loaded from the package's internal
#' length conversion data.
#' @examples
#' # Convert 10 feet to meters
#' mylength(x = 10, from = "ft", to = "m")
#' # Convert 1000 millimeters to yards
#' mylength(x = 1000, from = "mm", to = "yd")
#' @export
mylength <- function(x, from, to) {

  if (!all(from %in% length_conversions$symbol) || !all(to %in% length_conversions$symbol)) {
    stop("Conversion factors not available for all units.")
  }

  conversion_factors <- length_conversions$si[length_conversions$symbol %in% from]
  conversion_factors <- conversion_factors / length_conversions$si[length_conversions$symbol %in% to]

  result <- x * conversion_factors

  return(result)
}


# Reading the length data
length_conversions <- read.csv("C:/Users/nishi/Downloads/uconvert/data-raw/length.csv")



