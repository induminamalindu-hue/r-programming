#get dataset
getwd()

Vehicle_data = read.csv("auto_Info.csv", header = TRUE, sep = ",")
Vehicle_data

#Central Tendency
#Measures of location 
#1) Mean (add all values divide by how many values there are)
# ex 6,7,8
#Mean = (6+7+8)/3 = 7
mean(Vehicle_data$engine_size)
mean(Vehicle_data$horsepower)
mean(Vehicle_data$curb_weight)
mean(Vehicle_data$price)


#2) Median (put numbers in order to pick the middle number)
median(Vehicle_data$engine_size)
median(Vehicle_data$horsepower)
median(Vehicle_data$curb_weight)
median(Vehicle_data$price)

#3) Mode(Most repeated value)
#find the mode
mode_function <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

mode_function(Vehicle_data$engine_size)

mode_function <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

mode_function(Vehicle_data$horsepower)

mode_function <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

mode_function(Vehicle_data$curb_weight)

mode_function <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

mode_function(Vehicle_data$price)

#Bell Curve
#1 Load data
getwd()

Vehicle_data = read.csv('auto_Info.csv' , header = TRUE, sep=",")
Vehicle_data

#2 Calculate mean and Standard deviation
#mean

mean_enginesize <- mean(Vehicle_data$engine_size)
mean_enginesize

#SD 

sd_enginesize <- sd(Vehicle_data$engine_size)
sd_enginesize

#3) create a sequence of x values
x_values <- seq(min(Vehicle_data$engine_size), max(Vehicle_data$engine_size), length=10)

#calculate the normal distribution Y Values using dnorm()
y_values <- dnorm(x_values , mean =mean_enginesize, sd=sd_enginesize )

#4 plot
plot(x_values, y_values, type = "l", col = "blue", lwd = 2,
     main = "Bell curve of enginesize",
     xlab = "Marks", ylab = "Density")

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
y_values <- dnorm(x_values , mean =mean_horsepower, sd=sd_horsepower )

#4 plot
plot(x_values, y_values, type = "l", col = "yellow", lwd = 2,
     main = "Bell curve of horspower",
     xlab = "Marks", ylab = "Density")

#Bell Curve
#1 Load data
getwd()

Vehicle_data = read.csv('auto_Info.csv' , header = TRUE, sep=",")
Vehicle_data

#2 Calculate mean and Standard deviation
#mean

mean_curbweight <- mean(Vehicle_data$curb_weight)
mean_curbweight

#SD 

sd_curbweight <- sd(Vehicle_data$curb_weight)
sd_curbweight

#3) create a sequence of x values
x_values <- seq(min(Vehicle_data$curb_weight), max(Vehicle_data$curb_weight), length=10)

#calculate the normal distribution Y Values using dnorm()
y_values <- dnorm(x_values , mean =mean_curbweight, sd=sd_curbweight )

#4 plot
plot(x_values, y_values, type = "l", col = "red", lwd = 2,
     main = "Bell curve of curb weight",
     xlab = "Marks", ylab = "Density")

getwd()

Vehicle_data = read.csv('auto_Info.csv' , header = TRUE, sep=",")
Vehicle_data

#2 Calculate mean and Standard deviation
#mean

mean_price <- mean(Vehicle_data$price)
mean_price

#SD 

sd_price <- sd(Vehicle_data$price)
sd_price

#3) create a sequence of x values
x_values <- seq(min(Vehicle_data$price), max(Vehicle_data$price), length=10)

#calculate the normal distribution Y Values using dnorm()
y_values <- dnorm(x_values , mean =mean_price, sd=sd_price )

#4 plot
plot(x_values, y_values, type = "l", col = "orange", lwd = 2,
     main = "Bell curve of Price",
     xlab = "Marks", ylab = "Density")

