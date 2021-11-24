# File:   OverlayingPlots.R
# Course: R: An Introduction (with RStudio)

# INSTALL AND LOAD PACKAGES ################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################
?dnorm
# x, q	vector of quantiles.
# mean - vector of means.
# sd vector of standard deviations.
# Add a normal distribution
# dnorm gives the density, pnorm gives the distribution function, qnorm gives the quantile function, and rnorm generates random deviates.
"""
Dnorm(x,mu,sigma,log) gives the density,pdf. Hieght of a normal curve. The y value given the x value. 
Upto 4 arguments 
Default: error, 0, 1, false 
X – where do you want to know the heights. (0,1,2,3) 
Mean – mu, where do you want it centered. (2.5,2) 
Sigma – how wide do you want the bell curve to be. (3,3,3,4,5) 
Log – logarithm of the values. false/true 
go whichever vector is the longest, sigma
iterate through other vector values to give us 5 elements
for each parameter
x: 0,1,2,3,0 -- where do you want to know the height 
mu: 2.5,2,2.5,2,2.5 - where do want it centered
sigma: 3,3,3,4,5 -- how wide
"""
# avoid scientific notation
options(scipen=999)
format(v, big.mark = ",") # using big.mark to add commas
library(scales)

x <- c(0,1,2,3)
mu <- c(2.5,2)
sigma <- c(3,3,3,4,5)
df <- dnorm(x,mu,sigma)
curve(dnorm(x,mu,sigma))
# format(big_number, scientific = FALSE)

x <- c(3,3,4,4,5,4,4,4,3)
sd(x)
# a random variable being within a range of values.


# Annual Canadian Lynx trappings 1821-1934
?lynx # information on data set.
head(lynx)

# HISTOGRAM ################################################

# Default
hist(lynx)

# avoid scientific notation
options(scipen=999)
format(v, big.mark = ",") # using big.mark to add commas
library(scales)

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
# Clear environment
rm(list = ls())
ls() # the variables in the environment
avg <- mean(lynx)
sd <- sd(lynx)
?dnorm
# x, q	vector of quantiles.
# mean - vector of means.
# sd vector of standard deviations.
# Add a normal distribution
# dnorm gives the density, pnorm gives the distribution function, 
# qnorm gives the quantile function, and rnorm generates random deviates.
dt <- dnorm(0, mean = 0, sd = 1)
dt
# The probability of the value being 0?
# Default: error, 0, 1, false 
dnorm(1:3)
dnorm(1:3,0,1) # same values since 0,1 are default params
dnorm(1:3,2,1) # now the mean is a 2
curve(dnorm(1:3,2,1))  # can't do this with these values of dnorm
?curve
curve(sin, -2*pi, 2*pi, xname = "t")
"""
Draws a curve corresponding to a function over the interval [from, to]. 
curve can plot also an expression in the variable xname, default x.
   curve(expr, from = NULL, to = NULL, n = 101, add = FALSE,
         type = "l", xname = "x", xlab = xname, ylab = NULL,
         log = NULL, xlim = NULL, ...)   
"""
plot(dnorm(1:3,2,1))  # cant do this but there are only 3 points
1:3 # 1,2,3
#The most powerful application of the dnorm() function is that it is in creating a normal distribution plot in R.
# Let’s find the value of the normal distribution pdf at x=10 with mean=20 and sd=5.
?seq()
data <- seq(-3, 3, length = 30)
dt <- dnorm(data)
plot(data, dt, type = "l", lwd = 1.5, axes = FALSE, xlab = "", ylab = "")
# for each element of the sequence dnorm give the density,height, at that x value
# for a normal distribution.  It has no significance other than this is what
# a random variables density function would look like it was a normal distribution.
# NEXT continue https://r-lang.com/dnorm-function-in-r-with-example/
axis(1, at = -3:3, labels = c("-3s", "-2s", "-1s", "mean", "1s", "2s", "3s"))
dt

dnorm(0)
dt <- dnorm(x=10, mean=20, sd=5)
dt
x <- c(1,2,3,4,5,6,7,8,9,10)
avg <- mean(x)
sd <- sd(x)
df <- dnorm(x,avg,sd)

#Next
# https://r-lang.com/dnorm-function-in-r-with-example/
# Creating a plot based on the dnorm() function.
?curve
"""
Dnorm(x,mu,sigma,log) gives the density,pdf. Hieght of a normal curve. The y value given the x value. 
Upto 4 arguments 
Default: error, 0, 1, false 
X – where do you want to know the heights. (0,1,2,3) 
Mean – mu, where do you want it centered. (2.5,2) 
Sigma – how wide do you want the bell curve to be. (3,3,3,4,5) 
Log – logarithm of the values. false/true 
go whichever vector is the longest, sigma
iterate through other vector values to give us 5 elements
for each parameter
"""
# make a histogram in [R], and the normal curve that describes the histogram as follows:
w<-rnorm(1000, mean=10, sd=2) 
hist(w, col="red", freq=F, xlim=10+c(-5,5))
curve( dnorm(x, mean=10,sd=2), 5, 15, add=T, col="blue")
# error 'expr' must be a function, or a call or an expression containing 'x'
curve(dnorm(w, mean=mean(w), sd=sd(w)), y = 5, to = 15, add=T, col="blue")
# 
curve(dnorm(x, mean=mean(w), sd=sd(w)), y = 5, to = 15, add=T, col="blue")

curve(dnorm(x,avg,sd))
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)))
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
