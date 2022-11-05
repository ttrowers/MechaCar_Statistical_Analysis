library(dplyr)

# import csv file 
# demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function
# lm(qsec ~ hp,mtcars) #create linear model
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)
Mecha_lm

# view using summary
summary(Mecha_lm)

# view R_squared
summary(Mecha_lm)$r.squared

# ###### Deliverable 2 ##############
#  import csv file
Suspension_coil <- read.csv(file= 'Suspension_coil.csv',check.names=F,stringsAsFactors = F)

# create a summary table for suspension coils 
total_summary <- Suspension_coil %>%
  summarize(Mean =mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
total_summary

# view by lots using group_by 
lot_summary <- Suspension_coil%>% group_by(Manufacturing_Lot)%>%
  summarize(Mean =mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
lot_summary

# ######## Deliverable 3 ###################
#  note: level of significance is .05

# Ho: mu=1500'
# Ho : mu<> 1500

t.test(Suspension_coil$PSI, mu=1500)

#  analysis -p-value(0.6) greater that 0.05 therefore we fail to reject HO 
# t.test by lots
#  Lot 1
s




