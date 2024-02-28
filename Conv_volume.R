
#' Convert units of volume
#' This function converts numeric values from one unit of volume to another.
#' @param x Numeric vector containing the values to be converted.
#' @param from Character specifying the current units of 'x' (using the symbol).
#' @param to Character specifying the new units of 'x' (using the symbol).
#' @return Numeric vector with values in the new units.
#' @details
#' The function takes a numeric vector 'x' and two character vectors 'from' and 'to' to specify
#' the units for conversion. The conversion is based on data loaded from the package's internal
#' volume conversion data.
#' @param x Numeric vector of values to be converted.
#' @param from Character vector specifying the current units of 'x' (using the symbol).
#' @param to Character vector specifying the new units of 'x' (using the symbol).
#' @return Numeric vector with values in the new units.
#' @details
#' The function uses internal data to perform volume unit conversions. It checks if the specified
#' 'from' and 'to' units exist in the internal data, and if valid, it computes the conversion factor
#' and performs the conversion.
#' @examples
#' # Convert 10 acre-feet to pints
#' myvolume(x = 10, from = "ac ft", to = "pt")
#' # Convert 500 liters to gallons
#' myvolume(x = 500, from = "L", to = "gal")
#' @export
myvolume <- function(x, from, to) {

  if (!all(from %in% volume_conversions$symbol) || !all(to %in% volume_conversions$symbol)) {
    stop("Conversion factors not available for all units.")
  }

  conversion_factors <- volume_conversions$si[volume_conversions$symbol %in% from]
  conversion_factors <- conversion_factors / volume_conversions$si[volume_conversions$symbol %in% to]

  result <- x * conversion_factors

  return(result)
}


volume_conversions <- read.csv("C:/Users/nishi/Downloads/uconvert/data-raw/volume.csv")






