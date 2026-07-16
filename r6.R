#Linear Regression & Correlation Analysis
getwd()

Student_data = read.csv('stu.csv', header = TRUE, sep=",")
Student_data

#Correlation Analysis
#-1 to +1
cor(Student_data$Age,Student_data$Marks)

#Covariance Correlation
#measures how two variables change together
#if both increase -> positive Covariance
#if one increases while other decreases -> negative Covariance
#Near 0 No linear pattern
cov(Student_data$Age, Student_data$Marks)

# Calculate statistics
cov_value <- cov(Student_data$Age, Student_data$Marks)
pearson_value <- cor(Student_data$Age, Student_data$Marks, method = "pearson")
spearman_value <- cor(Student_data$Age, Student_data$Marks, method = "spearman")

# Create scatter plot with regression line
plot(Student_data$Age, Student_data$Marks,
     main = "Age vs Marks with Correlation & Covariance",
     xlab = "Age",
     ylab = "Marks",
     pch = 19,
     col = "darkblue")

# Add regression line
model <- lm(Marks ~ Age, data = Student_data)
abline(model, col = "red", lwd = 2)

# Add text box with values
legend_text <- paste("Covariance:", round(cov_value, 2),
                     "\nPearson:", round(pearson_value, 2),
                     "\nSpearman:", round(spearman_value, 2))

# Add text to plot
legend("bottomright", legend = legend_text, bty = "n", cex = 0.9,
       text.col = "black")

#Linear Regression
model <- lm(Marks ~ Age, data=Student_data)
summary(model)

#Graph
plot(Student_data$Age, Student_data$Marks,
     main="Age vs Marks (Regression Line)",
     xlab = "Age", ylab = "Marks")
abline(model, col="blue", lwd =2)

par(mar = c(4, 4, 2, 1))  # bottom, left, top, right
plot(Student_data$Age, Student_data$Marks,
     main = "Age vs Marks (Regression Line)",
     xlab = "Age", ylab = "Marks")
abline(model, col = "blue", lwd = 2)

#Time series Analysis & Forecasting
# Assume Marks are collected monthly
marks_ts <- ts(Student_data$Marks[1:24], frequency = 12, start = c(2023,1))

# Plot Time Series
plot(marks_ts, main = "Monthly Student Marks", ylab = "Marks")

# Decompose time series
decomposed <- decompose(marks_ts)
plot(decomposed)

# Forecasting
install.packages("forecast")
library(forecast)
model_ets <- ets(marks_ts)
forecast_data <- forecast(model_ets, h = 6)
plot(forecast_data)
