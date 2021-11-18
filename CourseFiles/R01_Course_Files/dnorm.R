# File:   OverlayingPlots.R
# Course: R: An Introduction (with RStudio)

# INSTALL AND LOAD PACKAGES ################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

# Annual Canadian Lynx trappings 1821-1934
?lynx # information on data set.
head(lynx)

# HISTOGRAM ################################################

# Default
hist(lynx)

# Add some options
hist(lynx,
     breaks = 14,          # "Suggests" 14 bins
     freq   = FALSE,       # Axis shows density, not freq.
     col    = "thistle1",  # Color for histogram
     main   = paste("Histogram of Annual Canadian Lynx",
                    "Trappings, 1821-1934"),
     xlab   = "Number of Lynx Trapped")
# From the histogram We don't see the year but we see the
# sum of years on the y axis.
# For example most of the years there were less than 
# 500 lynx trapped.
# We also can calculate the average number of lynx trapped
# and the standard deviation or the square root of The variance
# or the average spread of values around the expected value.

avg <- mean(lynx)
sd <- sd(lynx)
?dnorm
# x, q	vector of quantiles.
# mean - vector of means.
# sd vector of standard deviations.
# Add a normal distribution
# dnorm gives the density, pnorm gives the distribution function, qnorm gives the quantile function, and rnorm generates random deviates.
x <- c(1,2,3,4,5,6,7,8,9,10)
avg <- mean(x)
sd <- sd(x)
df <- dnorm(x,avg,sd)

#Next
# https://r-lang.com/dnorm-function-in-r-with-example/
# Creating a plot based on the dnorm() function.
?curve
curve(dnorm(x,avg,sd))
dnorm(x, mean = mean(lynx), sd = sd(lynx)
# d <- dnorm(x, mean = mean(lynx), sd = sd(lynx))
           
# x is from the lynx set I think           
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",  # Color of curve
      lwd = 2,           # Line width of 2 pixels
      add = TRUE)        # Superimpose on previous graph

# Add two kernel density estimators
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

# Add a rug plot
rug(lynx, lwd = 2, col = "gray")

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
