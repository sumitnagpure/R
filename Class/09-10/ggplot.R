library(ggplot2)
# Loads the ggplot2 package.

cars2018 <- read.csv('cars2018.csv', stringsAsFactors = T)
# Reads the CSV; stringsAsFactors = T treats text columns as factors.


### Scatter-plot ####
ggplot(data=cars2018, aes(x=Displacement, y=MPG)) + geom_point()
# Creates a scatter plot: 
# - Maps Displacement to the x-axis and MPG to the y-axis (aes). 
# - Adds points (geom_point).


ggplot(data=cars2018, aes(x=Displacement, y=MPG, color=Transmission)) + geom_point()


ggplot(data=cars2018, aes(x=Displacement, y=MPG, color=Cylinders)) + geom_point()


ggplot(data=cars2018, aes(x=Displacement, y=MPG, color=Transmission)) + geom_point(alpha=0.5)


### Histogram ####

ggplot(data=cars2018, aes(x=Displacement))+
  geom_histogram()


#since our data is small, we added bins as 15, (default=30)
ggplot(data=cars2018, aes(x=Displacement))+
  geom_histogram(bins=15)


ggplot(data=cars2018, aes(x=Displacement))+
  geom_histogram(bins=15, fill='yellowgreen', color='tan4')

### Density-Plot ####

ggplot(data=cars2018, aes(x=Displacement))+
  geom_density(fill='yellowgreen', color='tan4')


ggplot(data=cars2018, aes(y=Displacement))+
  geom_density(fill='yellowgreen', color='tan4')

### Box-plot ####

ggplot(data=cars2018, aes(x=Displacement))+
  geom_boxplot()

ggplot(data=cars2018, aes(x=Displacement))+
  geom_boxplot(fill='yellowgreen', color='tan4')

ggplot(data=cars2018, aes(y=Displacement))+
  geom_boxplot(fill='yellowgreen', color='tan4')

ggplot(data=cars2018, aes(y=Displacement, color=Transmission))+
  geom_boxplot()

ggplot(data=cars2018, aes(y=Displacement, fill=Transmission))+
  geom_boxplot()


### Bar-plot ####

ggplot(data=cars2018, aes(x=Transmission))+
  geom_bar()

ggplot(data=cars2018, aes(x=Transmission, fill=Aspiration))+
  geom_bar()

ggplot(data=cars2018, aes(x=Transmission, fill=Aspiration))+
  geom_bar(position='dodge')

ggplot(data=cars2018, aes(x=Transmission, fill=Aspiration))+
  geom_bar(position='jitter')


ggplot(data=cars2018, aes(x=Displacement, y=MPG, color=Transmission))+
  geom_point()

ggplot(data=cars2018, aes(x=Displacement, y=MPG, color=Transmission))+
  geom_point()+facet_grid(.~Transmission)

ggplot(data=cars2018, aes(x=Displacement, y=MPG, color=Transmission))+
  geom_point()+facet_grid(Transmission~.)

ggplot(data=cars2018, aes(y=Displacement, x=MPG, color=Transmission))+
  geom_point()+facet_grid(.~Transmission)

ggplot(data=cars2018, aes(y=Displacement, x=MPG, color=Transmission))+
  geom_point()+facet_grid(Transmission~.)


