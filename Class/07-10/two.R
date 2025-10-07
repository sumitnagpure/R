housing <- read.csv("G:/My Drive/R/Datasets/Housing.csv", stringsAsFactors = T)
#### table ####

table(housing$gashw)

table(housing$prefarea,housing$gashw)

houses_prefarea_gasw <- subset(housing,prefarea=='yes' & gashw=='yes')
houses_prefarea_gasw

#### add-margin #####
addmargins(table(housing$prefarea,housing$gashw))


#### mathematical functions ####

log(3)
log(100,10)

exp(1)
exp(2)
#### ifelse ####
marks <- c(10,12,19,21,25,33,35,36)
# more than 16 is pass
cnt <- 0
for(n in marks){
  if(n>=16){
    cnt <- cnt+1
  }
}
print(cnt)

result <- ifelse(marks>=16,"pass", "fail")
table(result)

#### mean ####
marks <- c(NA,10,12,19,21,25,33,35,36)
mean(marks)

mean(marks,na.rm=T)
var(marks)
var(marks, na.rm=T)

summary(housing$price)


temp <- c(1,2,3,4,5)
summary(temp)

temp <- seq(1,41,2)
summary(temp)

#### summary ####
summary(housing$price)
summary(housing$recroom)
summary(housing)


#### attach ####
# best when working with single dataset
attach(housing)
summary(price)
detach(housing)
summary(price)

summary(recroom)
