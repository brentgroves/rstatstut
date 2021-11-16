# File:   Scatterplots.R
# Course: R: An Introduction (with RStudio)

# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

?mtcars
head(mtcars)

# PLOTS ####################################################

# Good to first check univariate distributions
# How does weight vary.
hist(mtcars$wt)
hist(mtcars$mpg)
# A few on the high end.

# Basic X-Y plot for two quantitative variables
dev.off()
plot(mtcars$wt, mtcars$mpg)

# Add some options
plot(mtcars$wt, mtcars$mpg,
  pch = 19,         # Solid circle, point character
  cex = 1.5,        # Make 150% size, size of circle
  col = "#cc0000",  # Red, hex color
  main = "MPG as a Function of Weight of Cars",
  xlab = "Weight (in 1000 pounds)",
  ylab = "MPG")

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
                     cat("\014")  # ctrl+L

# Clear mind :)
