library(testthat)
library(uconvert)

test_that("conversion works for area", {
  expect_equal(myarea(x = c(10, 13), from = "ac", to = "sq yd"), c(48400, 62920))
})




test_that("Conversion works for length", {

  expect_equal(
    mylength(x = c(10, 3433), from = "ftm", to = "fur"),
    c(0.0909089, 31.20909),
    tolerance = 10^-5
  )
})


test_that("Conversion works for mass", {
  # Test case for converting from "ct" to "st"
  expect_equal(
    mymass(x = c(10, 2.555e5), from = "ct", to = "st"),
    c(0.000314946, 8.0468726),
    tolerance = 10^-6
  )
})


test_that("Conversion works for volume", {
  # Test case for converting from "ac ft" to "pk"
  expect_equal(
    myvolume(x = 10, from = "ac ft", to = "pk"),
    1.357e+6,
    tolerance = 10^-3
  )
})



test_that("no errors on list", {
  expect_error(list_units(measure = "area"), NA)
  expect_error(list_units(measure = "length"), NA)
  expect_error(list_units(measure = "mass"), NA)
  expect_error(list_units(measure = "volume"), NA)
  expect_error(list_units(measure = "blah"))
})
