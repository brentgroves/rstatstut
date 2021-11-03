# First I'll make a vector of Z-scores
z_scores <- seq(-3, 3, by = .1)
plot(z_scores)
# The function dnorm returns the value of the probability 
#density function for the normal distribution given parameters for x, μ, and σ. Some examples of using dnorm are below:

#PDF vrs PMF.  The PMF is the probability of a random variable taking on a descrete value but a PDF is the 
#probability of it being in a range of values. 

#In a more precise sense, the PDF is used to specify the probability of the random variable falling within a 
#particular range of values, as opposed to taking on any one value. This probability is given by the integral 
#of this variable's PDF over that range—that is, it is given by the area under the density function but above 
#the horizontal axis and between the lowest and greatest values of the range. The probability density function 
#is nonnegative everywhere, and its integral, or value,[]- over the entire space is equal to 1. 

#s a distribution, the mapping of the values of a random variable to a probability has a shape when 
#ll values of the random variable are lined up. The distribution also has general properties that can be measured. 
#wo important properties of a probability distribution are the expected value and the variance. Mathematically, 
#hese are referred to as the first and second moments of the distribution. Other moments include the
#skewness (3rd moment) and the kurtosis (4th moment).

#Kurtosis is a measure of the combined weight of a distribution's tails relative to the center of the distribution. 
#When a set of approximately normal data is graphed via a histogram, it shows a bell peak and most data within 
#three standard deviations (plus or minus) of the mean. However, when high kurtosis is present, the tails extend 
#farther than the three standard deviations of the normal bell-curved distribution.

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

# Annual Canadian Lynx trappings 1821-1934
?lynx
head(lynx)

f <- makeFun( A * x ^  2 ~ x, A = 0.5)

# Add a normal distribution
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",  # Color of curve
      lwd = 2,           # Line width of 2 pixels
      add = TRUE)        # Superimpose on previous graph
curve(dnorm(0, mean = 0, sd = 1))