
# Set working directory
setwd("C:/Users/it24103638/Desktop/it24103638")

# ---------------------- Exercise 1 ----------------------
# Import shareholders data
data <- read.table("Data.txt", header=TRUE, sep=",")
names(data) <- c("Company", "Shareholders")
attach(data)

# Histogram for shareholders
hist(Shareholders, main="Histogram for Number of Shareholders")

# Histogram with 7 classes from 130 to 270
histogram <- hist(Shareholders, main="Histogram with 7 Classes", breaks=seq(130, 270, length=8), right=FALSE)

# Frequency distribution
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
classes <- c()
for(i in 1:(length(breaks)-1)) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}
cbind(Classes=classes, Frequency=freq)

# Frequency polygon
plot(mids, freq, type='l', main="Frequency Polygon", xlab="Shareholders", ylab="Frequency", ylim=c(0, max(freq)))

# Cumulative frequency polygon (Ogive)
cum.freq <- cumsum(freq)
new <- c()
for(i in 1:length(breaks)) {
  if(i == 1) {
    new[i] = 0
  } else {
    new[i] = cum.freq[i-1]
  }
}
plot(breaks, new, type='l', main="Cumulative Frequency Polygon", xlab="Shareholders", ylab="Cumulative Frequency", ylim=c(0, max(cum.freq)))
cbind(Upper=breaks, CumFreq=new)

# ---------------------- Exercise 2 ----------------------
# Import delivery time data
delivery <- read.table("Exercise - Lab 05.txt", header=TRUE)
names(delivery) <- c("Delivery_Time")
attach(delivery)

# Histogram with 9 classes from 20 to 70
histogram2 <- hist(Delivery_Time, main="Histogram for Delivery Times", breaks=seq(20, 70, length=10), right=FALSE)

# Cumulative frequency polygon (Ogive)
breaks2 <- round(histogram2$breaks)
freq2 <- histogram2$counts
cum.freq2 <- cumsum(freq2)
new2 <- c()
for(i in 1:length(breaks2)) {
  if(i == 1) {
    new2[i] = 0
  } else {
    new2[i] = cum.freq2[i-1]
  }
}
plot(breaks2, new2, type='l', main="Cumulative Frequency Polygon for Delivery Times", xlab="Delivery Time", ylab="Cumulative Frequency", ylim=c(0, max(cum.freq2)))
cbind(Upper=breaks2, CumFreq=new2)
