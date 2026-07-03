#get dataset
getwd()

Vehicle_data = read.csv("auto_Info.csv", header = TRUE, sep = ",")
Vehicle_data

#Central Tendency
#Measures of location 
#1) Mean (add all values divide by how many values there are)
# ex 6,7,8
#Mean = (6+7+8)/3 = 7
mean(Vehicle_data$horsepower)

#2) Median (put numbers in order to pick the middle number)
median(Vehicle_data$horsepower)

#3) Mode(Most repeated value)
#find the mode
mode_function <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

mode_function(Vehicle_data$horsepower)


#Bell Curve
#1 Load data
getwd()

Vehicle_data = read.csv('auto_Info.csv' , header = TRUE, sep=",")
Vehicle_data

#2 Calculate mean and Standard deviation
#mean

mean_horsepower <- mean(Vehicle_data$horsepower)
mean_horsepower

#SD 

sd_horsepower <- sd(Vehicle_data$horsepower)
sd_horsepower

#3) create a sequence of x values
x_values <- seq(min(Vehicle_data$horsepower), max(Vehicle_data$horsepower), length=10)

#calculate the normal distribution Y Values using dnorm()
y_values <- dnorm(x_values , mean =mean_marks, sd=sd_horsepower )

#4 plot
plot(x_values, y_values, type = "l", col = "blue", lwd = 2,
     main = "Bell curve of horsepower",
     xlab = "Marks", ylab = "Density")