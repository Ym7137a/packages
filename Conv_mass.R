
#' Convert units of mass
#' This function converts numeric values from one unit of mass to another.
#' @param x Numeric vector containing the values to be converted.
#' @param from Character specifying the current units of 'x' (using the symbol).
#' @param to Character specifying the new units of 'x' (using the symbol).
#' @return Numeric vector with values in the new units.
#' @details
#' The function takes a numeric vector 'x' and two character vectors 'from' and 'to' to specify
#' the units for conversion. The conversion is based on data loaded from the package's internal
#' mass conversion data.
#' @param x Numeric vector of values to be converted.
#' @param from Character vector specifying the current units of 'x' (using the symbol).
#' @param to Character vector specifying the new units of 'x' (using the symbol).
#' @return Numeric vector with values in the new units.
#' @details
#' The function uses internal data to perform mass unit conversions. It checks if the specified
#' 'from' and 'to' units exist in the internal data, and if valid, it computes the conversion factor
#' and performs the conversion.
#' @examples
#' # Convert 10 carats to kilograms
#' my_mass(x = 10, from = "ct", to = "kg")
#' # Convert 500 grams to pounds
#' mymass(x = 500, from = "g", to = "lb")
#' @export
mymass <- function(x, from, to) {
  if (!all(from %in% mass_conversions$symbol) || !all(to %in% mass_conversions$symbol)) {
    stop("Conversion factors not available for all units.")
  }

  conversion_factors <- mass_conversions$si[mass_conversions$symbol %in% from]
  conversion_factors <- conversion_factors / mass_conversions$si[mass_conversions$symbol %in% to]

  result <- x * conversion_factors

  return(result)
}


mass_conversions <- read.csv("C:/Users/nishi/Downloads/uconvert/data-raw/mass.csv")





