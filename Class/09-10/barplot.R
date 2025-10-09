### Data Setup ####

a <- c(33, 24, 35, 45, 60)
# Creates a numeric vector named 'a'.

data("mtcars")
# Loads the built-in R dataset 'mtcars' (Motor Trend Car Road Tests).


### Base R Visualization ####

barplot(a)
# Generates a basic bar plot of the values in vector 'a'.

hist(mtcars$mpg)
# Generates a histogram to visualize the distribution of the 'mpg'

boxplot(mtcars$mpg)
# Generates a box-and-whisker plot for the 'mpg' variable
# (shows quartiles and outliers).

plot(mtcars$disp, mtcars$mpg)
# Generates a scatter plot with 'disp' (displacement) on
#the x-axis and 'mpg' (miles per gallon) on the y-axis.