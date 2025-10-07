#1. Orders.csv from Data-sets.
orders=read.csv('G:/My Drive/R/Datasets/Orders.csv')
#    Import and generate the following outputs:
#   a. Display the meta-data of its data from a object.
#     
  str(orders)
#   b. Descriptive Statistics:

  summary(orders)
  
#2. cars2018.csv from Data-sets.
  cars=read.csv('G:/My Drive/R/Datasets/cars2018.csv', stringsAsFactors = T)
  summary(cars$Aspiration)
  summary(cars$Transmission)

  aspiration=cars$Aspiration
  transmisssion=cars$Transmission
  table(aspiration ,transmisssion)  
  
#3. 
  cars=read.csv('cars2018.csv', stringsAsFactors = T)
  cars$LNMPG <- log(cars$MPG)  
  summary(cars$LNMPG)
  
#4. function Fahrenheit and return in Celsius.
  
  temp_f_to_c <- function(f) {
    c <- (f-32)*(5/9)
    c
  }
  temp_f_to_c(32)
  temp_f_to_c(102)
#5. input numberic, return its coeff. of variation with formula:
#      (sd/mean)*100
  
  calc_coeff_of_var <- function(i) {
    coef_of_var=(sd(i)/mean(i))*100
    coef_of_var
  }
  calc_coeff_of_var(c(1,2,3,4,5,6,7,8))
#6. return numberic vector with NA values replaced by mean values.
  
  g <- c(1,2,NA,4,5,6)
  f <- c(1,2,NA,4,5,6)
  imputeMean <- function(i) {
    m <- mean(i,na.rm=T)
    i <- ifelse(is.na(i)==T,m,i)
    i
  }
  imputeMean(g)
  