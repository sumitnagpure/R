# 1. Consider the data-set survey.csv. use dplyr
#########################################################################
# Name          # Desc                        # Columns                 #
#-----------------------------------------------------------------------#
# MaleNonSmoker # Males who have never smoked # All                     #
#########################################################################
# PulseGT80     # pulse rate>80     # Sex, Exer, Smoke, Pulse #
#########################################################################
# RtHand        # Create var-> ratio of var   # Ratio_Hnd, Clap, Age    #
#               # Wr.Hnd/NW.Hnd as Ratio_Hnd  #                         #
#########################################################################
# DescStats     # Calculate the mean and      #                         #
#               # std.dev for the var age     #                         #
#########################################################################
# DescGrp       # Calculate the mean and      #                         #
#               # std.dev for the var age     #                         #
#               # grouped by sex              #                         #
#########################################################################
library('dplyr')
survey <- read.csv("Datasets/survey.csv", stringsAsFactors = T)
View(survey)

### 1.1 ####
MaleNonSmokers <-survey %>%  filter(Sex=='Male' & Smoke=='Never')
View(MaleNonSmokers)
### 1.2 ####
PulseGT80 <- survey %>% filter(Pulse>80) %>% select(Sex, Exer, Smoke, Pulse)
PulseGT80
### 1.3 ####
RtHand <- survey %>%mutate(Ratio_Hnd=Wr.Hnd/NW.Hnd) %>%
                    select(Ratio_Hnd,Clap,Age)
RtHand
### 1.4 ####
DescStat <- survey %>% summarise(mean_age=mean(Age),std=sd(Age)) 
DescStat

### 1.5 ####

survey_clean <- survey %>% filter(!is.na(Sex))

DescGrp <- survey_clean %>% group_by(by=Sex) %>%
                      summarise(mean_age=mean(Age),std=sd(Age)) 
DescGrp

### 2 ####
# Given files Items.csv, Orders.csv, Ord_Details.csv in the folder.
# merge them with appropriate keys to form a combined data.

df_items=read.csv('Datasets/Items.csv')
df_details=read.csv('Datasets/Ord_Details.csv')
df_orders=read.csv('Datasets/Orders.csv')
as_tibble(df_items)
as_tibble(df_details)
as_tibble(df_orders)

df_order_details <- df_items %>% left_join(df_details, by ='Item.ID') %>% 
                    left_join(df_orders, by='Order.ID')
View(df_order_details)

### 3 ####
# Combine the data in the files Courses.csv and CourseSchedule.csv
# with appropriate keys to form a combined data.

#crs <- crs %>% 
#              rename(CourseCode=CourseID) %>% 
#              inner_join(sch, by='CourseCode')

### 4 ####
# Consider a dataset comb1 in the folder.
# Reshape the data-set to the following

df_comb1 <- read.csv('Datasets/comb1.csv')
df_comb1

new_comb1 <- df_comb1 %>% pivot_longer(c('Highlighter','Marker',  'Pen', 'Refill'),
                          names_to = 'ItemType',values_to ='qty' ) %>% 
                          arrange(ItemType)

new_comb1 <- df_comb1 %>% pivot_longer(-District,
                                       names_to = 'ItemType',values_to ='qty' ) %>% 
  arrange(ItemType)
new_comb1

### 5 ####
# Consider the dataset comb2
# PatientID is to be broken into the format projectID-SiteID/PatientNumber

df_comb2=read.csv('Datasets/comb2.csv')
df_comb2
df_comb2_new <- df_comb2 %>% separate(PatientID,
                                      into = c('SiteID','PatientNumber'),
                                      sep='/')
df_comb2_new



### Extra Question####
stats <- survey %>% group_by(Smoke,Exer) %>% 
        summarise(mu_ht=mean(Height,na.rm=T)) %>% 
        drop_na()
stats


df_stat <- stats %>% pivot_wider(names_from = Exer,
                                 values_from = mu_ht)
df_stat
