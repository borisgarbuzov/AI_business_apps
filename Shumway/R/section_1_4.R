rm(list = ls())

# Section 1.4 Stationary Time Series

# Example 1.24
set.seed(2)
x = rnorm(100)
y = lag(x, -5) + rnorm(100)
par(mfrow=c(1,1))
ccf(y, x, ylab='CCovF', type='covariance')
abline(v=0, lty=2)
text(11, .9, 'x leads')
text(-9, .9, 'y leads')

y = rnorm(100)
m = y*1/2 + lag(y, 1)*1/2
plot(y)
plot(m)

