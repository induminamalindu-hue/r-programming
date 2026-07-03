install.packages("modeest")
library(modeest)



getwd()

Student_data = read.csv('stu.csv' , header = TRUE, sep=",")
Student_data
#Normality testing
#1)Shapiro wilk testing
shapiro.test(Student_data$Age)

#Shapiro wilk testing
#p> 0.05 => Data is normally distributed
#p< 0.05 => Data is not Normally distributed

#2) Histogram for Normality Check
hist(Student_data$Age,
     main = "Histogram of Age",
     xlab = "Marks",
     col = "lightblue",
     border = "black")

#Histogram bell sheped => Likely normal

#3)QQ plot for normality check
qqnorm(Student_data$Age,
       main = "Q-Q plot of Marks")
qqline(Student_data$Age,
       col="red",
       lwd = 2)
#Pointes on the straight line = likely normal

#SUMMARY statistics for Age and Marks
summary(Student_data[,c("Age","Marks")])
