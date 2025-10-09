library(tidyverse)

### gather/pivot_longer ####
table4a
gather(table4a, '1999', '2000',
       key='year',value='cases')

pivot_longer(table4a, c('1999','2000'),
             names_to = 'year',
             values_to='cases')

table4a %>% pivot_longer(c('1999','2000'),
                         names_to = 'year',
                         values_to='cases')

### spread/Pivot_wider ####
table2

spread(table2, key='type', value = 'count')
pivot_wider(table2, names_from = 'type',
            values_from='count')

table2 %>% pivot_wider(names_from='type', values_from = 'count')

# my stupidity
table2 %>% pivot_wider(names_from='type', values_from = 'count') %>% 
  pivot_wider(names_from='year', values_from=c('cases','population'))


### seperate ####

table3
separate(table3, rate, into=c('cases','pop'),
        convert=T)

table3 %>% separate(rate, into=c('cases','pop'),
                    convert=T)

### unite ####
table5
unite(table5, year, century, year, sep='')
