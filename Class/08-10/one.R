#### Lubridate ####

library(lubridate)
orders <- read.csv('G:/My Drive/R/Datasets/Orders.csv')

str(orders)
orders$Order.Date <- dmy(orders$Order.Date)
str(orders)

orders$OrderDate7Days <- orders$Order.Date + 7
orders[1:4,]


