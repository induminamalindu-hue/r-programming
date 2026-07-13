#SUMMARY statistics for Age and Marks
summary(Student_data[,c("Age","Marks")])

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
