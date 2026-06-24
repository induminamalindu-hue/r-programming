#get dataset
getwd()

Student_data =read.csv("student_performance.csv", header = TRUE, sep = ",")
Student_data

##ANOVA TEST
result <- aov(Hours_Studied ~ Assignment_Score, data = Student_data)
summary(result)
#             Df Sum Sq Mean Sq F value Pr(>F)
#Gender       1    144   144.1   0.429  0.514
#Residuals   98  32936   336.1
#if Pr(>F) < 0.05 ==> Statically Significant
#the average marks between Males and Females are Significantly different.

#if Pr(>5) >= 0.05 ==> Not Statically Significant
#there is no strong evidence to say marks are different based on gender.

#Frequency Distribution and Interval and midpoint
#1 create class interval 
breaks <- seq(0, 100, by =10) #creates ex :- 0-10, 10-20

#2 cut marks into Intervals
Student_data$Interval <- cut(Student_data$Final_Exam_Score, breaks = breaks, right = FALSE)

#3 Frequency table
freq_table <- table(Student_data$Interval)

freq_table

#Midpoint
midpoint <- (head(breaks, -1) + tail(breaks, -1)) /2
midpoint

#Create Histogram

barplot(freq_table,
        main = "Histogram of Final Exam scores",
        xlab = "Marks Range",
        ylab = "Number of Student",
        col = "lightblue",
        border = "black"
)

#Frequency Polygon (Midpoint & Lines)
#Midpoints
midpoints <- (head(breaks, -1) + tail(breaks, -1))/2

#Convert frequency table to numaric vectors
freq_values <- as.numeric(freq_table)

#plot frequency polygen
plot(midpoints, freq_values, type ="o",
     main = "Frequency Polygon",
     xlab = "Midpoint of Marks Range",
     ylab = "Number of Students",
     col = "blue",
     pch = 16)

#Bell Curve
#1 Load data
getwd()

Student_data = read.csv('student_performance.csv' , header = TRUE, sep=",")
Student_data

#2 Calculate mean and Standard deviation
#mean

mean_marks <- mean(Student_data$Hours_Studied)
mean_marks

#SD 

sd_marks <- sd(Student_data$Hours_Studied)
sd_marks
