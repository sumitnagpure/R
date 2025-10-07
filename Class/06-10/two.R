mtcars

data("mtcars")
mtcars[,1]
mtcars[,1]>20

######## vector #######
p <- c(10,20,30)
n <- c(1,2,3)
r <- c(1,2,3)

si<-p*n*r
print(si)
######### Data types ##########
a <- "Maths"
class(a) # Character

b <- 38
class(b) # Numberic

c <- as.integer(b)
class(c) # Integer

d <- TRUE
class(d) # Boolean
e <- T
class(e)
########  vectors - homogenous  ##########
p <- c(1000,220,32)
class(p)

subjects <- c("maths","science")
class(subjects)

r <- c(1000,'app',32)
class(r)
r

rr <- c(1000,T,32)
class(rr)
rr
ee <- c(1000,F,32)
ee

CO2
CO2$conc
class(CO2$conc)

##############  factor  #################
g <- list(1,23,34,5,67)
class(g)

f <- list(a=34, b=2.45, c="thy", d=c(1,24,5), e=FALSE)
length(f)
f$a
names(f)
f[3]

s <- c('f','m','m','m')
class(s)
f_s <- factor(s)
class(f_s)
s
f_s

################  NA & NaN  ##################

d <- NA
d
g <- c(34,NA,43)
is.na(g)
sum(is.na(g))

i=0/0
i # Not a Number (NaN)
is.nan(i)
is.na(i) # Every NaN is NA

j=56/0
j # Infinite
is.nan(j)
is.finite(j)
is.infinite(j)
########## Matrix ##########
m=matrix(18,3,2)
m

a=c(1,2,3,4,5,6)
n=matrix(a,2,3)
n

o=matrix(a,2,3, byrow=T)
o

p=matrix(a,3,3)  # if the input is less, it repeats the existing values
p

############# Binding ##########
a <- c(1,2,3,4)
b <- c(10,20,30,40)

rb <- rbind(a,b)
rb
cb <- cbind(a,b)
cb

cc <- c(10,20,30)
cc_rb <- rbind(a,cc)  # if the input is less, it repeats the existing values
cc_rb

dd_rb <- rbind(cc,a)
dd_rb
########## Array ##########
a <- array(data=c(1,2,3,4,5,6,7,8),dim=c(2,2,2))
a

########## Data- frames ##########
df <- data.frame(a=c(2,4,6,8,10),b=c(10,20,30,40,50))
df

df$a
colnames(df) # to be called only on data frames
names(df)
