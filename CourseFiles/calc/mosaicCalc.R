#mosaicCalc
# https://dtkaplan.github.io/RforCalculus/integrals-and-integration.html
# https://stackoverflow.com/questions/65075846/slice-plot-could-not-find-function-error
# https://github.com/ProjectMOSAIC/mosaicCalc/issues/4

install.packages("leaflet") 
install.packages("mosaic") 
install.packages("formatR") 
# https://www.r-pkg.org/pkg/mosaic
devtools::install_github("ProjectMOSAIC/mosaic", ref="beta")
remotes::install_github("ProjectMOSAIC/mosaicCalc", ref="beta")
install.packages("mosaicModel") 
install.packages("akima") 
library(mosaic)
library(mosaicCalc)
library(mosaicModel)
library(akima)

# Dont know if I need all these
# install.packages("mosaicCalc") 
# install.packages("rmarkdown") 
# install.packages("pandoc") 
# https://miktex.org/download
# install.packages("MIKTEX") 
# install.packages("tinytex") 
# install.packages("texi2dvi") 


# remove.packages("mosaicCalc")
# book uses function in beta version so install it
# "Computer-age Calculus with R" 

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
# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\14")  # ctrl+L