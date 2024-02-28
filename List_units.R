#' List possible units for conversion based on measure
#' @param measure Character specifying the measure ("area", "length", "mass", or "volume")
#' @return Character vectors of possible "from" and "to" units for conversion
#' @export

# List units function


list_units <- function(measure) {
  available_measures <- c("area", "length", "mass", "volume")

  if (!measure %in% available_measures) {
    stop("Invalid measure. Please specify 'area', 'length', 'mass', or 'volume'.")
  }

  # Define possible units for each measure
  possible_units <- list(
    area = c("ac", "sq yd", "sq m"),
    length = c("ftm", "fur", "m"),
    mass = c("ct", "st", "kg"),
    volume = c("ac ft", "pk", "m3")
  )

  return(possible_units[[measure]])
}


list_units(measure = "length")


