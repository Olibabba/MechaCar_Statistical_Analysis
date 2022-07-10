library(dbplyr)

mecha_mpg <- read.csv(file="MechaCar_mpg.csv")

head(mecha_mpg)

#generate linear regression model
model <- lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_mpg) 

model
#generate summary statistics
summary(model) 

# Read in Suspension csv
suspension <- data.frame(read.csv(file="Suspension_Coil.csv"))

head(suspension)

# creat summart dataframe
total_summary  <-  summarize(suspension, mean=mean(suspension$PSI), median=median(suspension$PSI), variance=var(suspension$PSI), SD=sd(suspension$PSI))
total_summary

# create lot summary dataframe
by_susp <- suspension %>% group_by(Manufacturing_Lot)
psi_stats <- by_susp %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI))
lot_summary <- data.frame(psi_stats)
lot_summary

# Perform t-test on all lots
t.test(suspension$PSI, mu=1500)

# perform t-tests on individual lots
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot =='Lot1'), mu=1500)
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot =='Lot2'), mu=1500)
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot =='Lot3'), mu=1500)
