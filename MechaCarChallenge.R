library(dbplyr)

mecha_mpg <- read.csv(file="MechaCar_mpg.csv")

head(mecha_mpg)

#generate linear regression model
model <- lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_mpg) 

model
#generate summary statistics
summary(model) 
