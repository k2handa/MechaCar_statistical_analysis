#Deliverable 1 
# Import Library
library(dplyr)

# Import and Read CSV file as dataframe
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

MechaCar_mpg <- rename(MechaCar_mpg, VehicleLength = vehicle_length,
                       VehicleWeight = vehicle_weight,
                       SpoilerAngle = spoiler_angle,
                       GroundClearance = ground_clearance)
head(MechaCar_mpg)


#liner regression using the lm() function
#create linear mode
full <- lm(mpg ~ VehicleLength + VehicleWeight + SpoilerAngle + GroundClearance + AWD, data=MechaCar_mpg)

full

#summarize linear model
summary(full)

#Deliverable 2 
#import and read csv 
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#import library 
library(tidyverse)

# create a summary table 
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 

# create summary for Lot
lot_summary <- Suspension_Coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Deliverable 3 

# use t test to determine what arguments are needed 
?t.test()

#determine psi across all lots are statistically different from pop mean of 1500psi
t.test(Suspension_Coil$PSI,mu=1500)


Lot1 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)
