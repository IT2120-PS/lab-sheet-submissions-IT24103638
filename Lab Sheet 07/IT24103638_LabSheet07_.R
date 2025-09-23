
 
setwd("C:/Users/it24103638/Desktop/IT24103638")

 

# 1. Train arrival: Uniform(0, 40)
# Probability train arrives between 10 and 25 minutes
punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)

# 2. Software update time: Exponential(rate = 1/3)
# Probability update takes <= 2 hours
pexp(2, rate = 1/3)

# 3. IQ scores ~ N(100, 15^2)
mean_iq <- 100
sd_iq <- 15

# i. Probability IQ > 130
1 - pnorm(130, mean = mean_iq, sd = sd_iq)

# ii. IQ score at 95th percentile
qnorm(0.95, mean = mean_iq, sd = sd_iq)
