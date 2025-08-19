setwd("C:/Users/it24103638/Desktop/IT24103638")

branch_data <- read.csv("DATA 3.csv")

head(branch_data)
str(branch_data)

boxplot(branch_data$X1, main="Boxplot - Attendance")
hist(branch_data$X1, main="Histogram - Attendance", col="lightblue", xlab="Attendance")
stem(branch_data$X1)

boxplot(branch_data$X2, main="Boxplot - Salary")
hist(branch_data$X2, main="Histogram - Salary", col="lightgreen", xlab="Salary")
stem(branch_data$X2)

boxplot(branch_data$X3, main="Boxplot - Years")
hist(branch_data$X3, main="Histogram - Years", col="lightpink", xlab="Years")
stem(branch_data$X3)

cat("Attendance: Mean=", mean(branch_data$X1), " Median=", median(branch_data$X1), " SD=", sd(branch_data$X1), "\n")
cat("Salary: Mean=", mean(branch_data$X2), " Median=", median(branch_data$X2), " SD=", sd(branch_data$X2), "\n")
cat("Years: Mean=", mean(branch_data$X3), " Median=", median(branch_data$X3), " SD=", sd(branch_data$X3), "\n")

cat("Attendance Quartiles:\n"); print(quantile(branch_data$X1)); cat("IQR=", IQR(branch_data$X1), "\n")
cat("Salary Quartiles:\n"); print(quantile(branch_data$X2)); cat("IQR=", IQR(branch_data$X2), "\n")
cat("Years Quartiles:\n"); print(quantile(branch_data$X3)); cat("IQR=", IQR(branch_data$X3), "\n")

find_mode <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}
cat("Mode of Years (X3):", find_mode(branch_data$X3), "\n")

find_outliers <- function(x) {
  q1 <- quantile(x, 0.25)
  q3 <- quantile(x, 0.75)
  iqr <- q3 - q1
  lower <- q1 - 1.5*iqr
  upper <- q3 + 1.5*iqr
  x[x < lower | x > upper]
}
cat("Outliers in Attendance (X1):\n"); print(find_outliers(branch_data$X1))
cat("Outliers in Salary (X2):\n"); print(find_outliers(branch_data$X2))
cat("Outliers in Years (X3):\n"); print(find_outliers(branch_data$X3))
