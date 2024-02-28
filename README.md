[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/u0GClGFY)
# HW 02 Instructions

Create an R package called `{uconvert}` that converts units of area,
length, mass, and volume based on a user’s inputs.

Your package should not have any package dependencies.

The data-raw folder contains CSV files with unit conversions from
[Wikipedia](https://en.wikipedia.org/wiki/Conversion_of_units). The base
SI units are meters for length, square meters for area, cubic meters for
volume, and kilograms for volume.

You should store these data frames as internal data that are not
available to the user.

Your R package should have these four functions

-   `conv_area()`,
-   `conv_length()`,
-   `conv_mass()`, and
-   `conv_volume()`.

These functions take as input three arguments, `x`, `from`, and `to`.
The `x` variable should be a numeric vector, the `from` a character of
length one specifying the current units of `x` (via the symbol), and
`to` a character of length one specifying the new units of `x` (via the
symbol). Each function should return a vector of the same length as the
input containing the numeric values in the new units.

Your R package should also have a function called `list_units()` which
has an argument `measure` which takes on the possible values `"area"`,
`"length"`, `"mass"`, or `"volume"` and returns the possible arguments
for `from` and `to` in the respective `convert_*()` function.

Make sure to commit regularly. Lack of informative and frequent commits
will result in point deductions.

Make sure you have set up continuous integration.

Make sure you include any links to third party resources you utilized (e.g. Stack Overflow or ChatGPT).

You will be graded on the following criteria:

1.  (2 pts) Functions work on test cases.
2.  (2 pts) Functions are well documented.
3.  (2 pts) Unit tests provide sufficient coverage (&gt; 70%).
4.  (2 pts) DESCRIPTION file is complete.
5.  (2 pts) No major errors/warnings or major notes. Continuous
    integration set up.
6.  (2 pts) R code is written in a [proper
    style](https://data-science-master.github.io/lectures/04_packages/04_style.html).

You can check your homework yourself for criteria 1, 3, and 5 by running the
following in R

``` r
devtools::check()
covr::package_coverage()
```
