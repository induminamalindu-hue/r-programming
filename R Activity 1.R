
getwd()

studentp =read.csv("student_performance.csv", header = TRUE, sep = ",")
studentp

#Calculate Range
range_marks <- max(student_performance$Final_Exam_Score) - min(student_performance$Final_Exam_Score)
range_marks

#Calculate IOR Interquartile Range
iqr_marks <- IQR(student_performance$Final_Exam_Score)
iqr_marks

#variance and Standard Deviation
var_marks <- var(student_performance$`Final_Exam_Score`)
var_marks

sd_marks <- sd(student_performance$Final_Exam_Score)
sd_marks