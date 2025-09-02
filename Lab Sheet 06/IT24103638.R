
# Set working directory
setwd("C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24103638")

# Question 1: Drug treatment (Binomial)
n1 <- 44
p1 <- 0.92

dbinom(40, n1, p1)              # Q1-ii: P(X=40)
pbinom(35, n1, p1)              # Q1-iii: P(X<=35)
1 - pbinom(37, n1, p1)          # Q1-iv: P(X>=38)
pbinom(42, n1, p1) - pbinom(39, n1, p1)  # Q1-v: P(40<=X<=42)

# Question 2: Babies per day (Poisson)
lambda2 <- 5

dpois(6, lambda2)               # Q2-iii: P(X=6)
1 - ppois(6, lambda2)           # Q2-iv: P(X>6)

# Exercise 1: Student pass rate (Binomial)
n3 <- 50
p3 <- 0.85

1 - pbinom(46, n3, p3)          # Ex1-ii: P(X>=47)

# Exercise 2: Call center (Poisson)
lambda3 <- 12

dpois(15, lambda3)              # Ex2-iii: P(X=15)
