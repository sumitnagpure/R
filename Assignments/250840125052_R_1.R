# 1. Subset the data-set Orders to create with only "online" payment

orders=read.csv('G:/My Drive/R/Class/Datasets/Orders.csv')

online_orders=subset(orders,Payment.Terms=='Online')
online_orders

# 2. Consider the data-set mtcars.
# O/P(write) the data in this data-set into a csv file and name the csv file as mtcars.csv.

write.csv(mtcars,"G:/My Drive/R/Class/Datasets/mtcars.csv")


# 3. Consider the data-set diamonds.
# Subset the data-set with the criteria  as cut=Premium and color=J
diam=read.csv2("G:/My Drive/R/Class/Datasets/Diamonds.csv")
diam_f=subset(diam,cut=='Premium' & color=='J')
diam_f

# 4. Consider the data-set diamonds.
#Create a data-frame object which stores just variables carat, color, depth and price.

df_diam=data.frame(carat=diam['carat'],
                   color=diam['color'],
                   depth=diam['depth'],
                   price=diam['price'])
head(df_diam)

# 5. Consider the dataset mtcars.
# Choose the 2nd,18th, 30th and 12th rows

sub_cars=mtcars[c(2,18,30,12),]
sub_cars
