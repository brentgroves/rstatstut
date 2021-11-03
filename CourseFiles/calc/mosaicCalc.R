#mosaicCalc
# https://dtkaplan.github.io/RforCalculus/integrals-and-integration.html
install.packages("mosaicCalc")
install.packages("mosaic")
devtools::install_github("ProjectMOSAIC/mosaic", build_vignettes = TRUE)
f <- makeFun( A * x ^  2 ~ x, A = 0.5)
as_daily_income <- function(yearly_income) {
  yearly_income / 365
}

as_daily_income(3650)
rm(as_daily_income)
as_daily_income <- function(yearly_income, duration=10) {
  yearly_income / duration
}
as_daily_income(3650,10)
100 * exp(-2.5)
dose <- 100 # mg
duration <- 10 # days
time_constant <- 4 # days
dose * exp(- duration / time_constant)
drug_remaining <- function(dose, duration, time_constant) {
  dose * exp(- duration / time_constant)
}
drug_remaining(dose = 100, duration = 10, time_constant = 4)
slice_plot(
  drug_remaining(dose = 100, time_constant = 4, duration = t) ~ t, 
  domain(t = 0:20)
)
adapt_seq(0, pi, 25, sin)