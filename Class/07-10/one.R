#### Control Statements ####
#### If Statement ####

si <- 103
if (si<200){
    print("number less than 200")
}

########## If else Statement ##########
if (si<100){
  print("number less than 100")
} else{
  print("number more than 100")
}

##### for loop ######

for(i in seq(1,10,2)){
  print(i*i)
}


#### While ####
# break
cnt <- 1
while (cnt <8){
  print(cnt)
  if (cnt==4) break
  cnt <- cnt+1
}

# next
cnt <- 1
while (cnt <8){
  cnt <- cnt+1
  if (cnt==4) next
  print(cnt)
}













