install.packages("modeest")
library(modeest)


#Covariance, Pearson correlation, and Spearman correlation all measure the relationship between two variables, but differ in what they measure and how they interpret the data. Covariance indicates the direction of a linear relationship and is on an unlimited scale. Pearson correlation measures the strength and direction of a linear relationship, with values between -1 and +1. Spearman correlation measures the strength and direction of a monotonic relationship by analyzing the ranks of the data, also with values between -1 and +1. 
#Covariance
#What it is: A measure of the joint variability of two random variables, showing their tendency to move together. 
#What it tells you: It indicates the direction of a relationship. A positive covariance means the variables tend to move in the same direction, while a negative covariance means they move in opposite directions. 
#Scale: Unlimited, ranging from -∞ to +∞. 
#Pearson Correlation Coefficient 
#What it is: A statistical measure that assesses the strength and direction of a linear relationship between two variables.
#What it tells you: It quantifies how well two variables are linearly related.
#Scale: Ranges from -1 to +1.
#+1: Perfect positive linear relationship.
#-1: Perfect negative linear relationship.
#0: No linear relationship.
#Spearman Correlation Coefficient 
#What it tells you: It assesses how well the relationship between two variables can be described using a monotonic function (i.e., a function that is either entirely non-increasing or entirely non-decreasing). It is calculated on the ranks of the data, making it less sensitive to outliers than Pearson correlation.
#Scale: Ranges from -1 to +1.

getwd()

Student_data = read.csv('stu.csv' , header = TRUE, sep=",")
Student_data
#Normality testing
#1)Shapiro wilk testing
shapiro.test(Student_data$Marks)

#Shapiro wilk testing
#p> 0.05 => Data is normally distributed
#p< 0.05 => Data is not Normally distributed

#2) Histogram for Normality Check
hist(Student_data$Marks,
     main = "Histogram of Mraks",
     xlab = "Marks",
     col = "lightblue",
     border = "black")

#Histogram bell sheped => Likely normal

#3)QQ plot for normality check
qqnorm(Student_data$Marks,
       main = "Q-Q plot of Marks")
qqline(Student_data$Marks,
       col="red",
       lwd = 2)
#Pointes on the straight line = likely normal

#SUMMARY statistics for Age and Marks
summary(Student_data[,c("Age","Marks")])
