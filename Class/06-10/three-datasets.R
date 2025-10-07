housing <- read.csv("Datasets/Housing.csv")
housing <- read.csv("Datasets/Housing.csv", stringsAsFactors = T)
str(housing) # gives internal structure of the object

# Header Present
bolly1 <- read.csv("Datasets/Bollywood_2015.csv")
# Header Absent
bolly2 <- read.csv("Datasets/Bollywood_2015_2.csv", header = F)
# Manually assigned headers
colnames(bolly2) <- c("Movie","Collection","Budget","Verdict") 

str(bolly1)
str(bolly2)

##################### csv2 ######################
# csv2 is beneficial when delimiter is ';'   #
diamonds <- read.csv2("Datasets/Diamonds.csv")
str(diamonds)

library(readxl)
sales <- read_excel("Datasets/Sales.xlsx")
str(sales)

write.csv(sales,"Datasets/sales.csv")

########## sub-setting a vector ########

x <- c(1,2,3,4,5,6,7,8,9,10)
x[1:5]
x[5:10]

########## sub-setting a matrix ##########
y=matrix(x,2,5)
y
y[1,]
y[,2]
y[,2,drop=F] #shows cols in table format now flattened format.

########## sub-setting a data-frame ##########
housing <- read.csv("Datasets/Housing.csv")
housing <- read.csv("Datasets/Housing.csv", stringsAsFactors = T)

housing[,1:2] 

housing[,c(4,6)] # gives 4th and 6th column
housing[,-c(4,6)] # Excluding the columns using '-'

housing[c(20,53,440),] # extracts specific records

ss_house1 <-subset(housing, driveway=='yes')
ss_house1

ss_house2<-subset(housing, driveway=='yes' & price>45000)
ss_house2

ss_housee<-head(subset(housing, driveway=='yes' & price>45000))
ss_housee

ss_house3<-subset(housing, driveway=='yes' & price>45000,
                  select=c(price, bedrooms, recroom))
ss_house3

















