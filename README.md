# MechaCar_Statistical_Analysis
MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.


## Linear Regression to Predict MPG
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
1. gound clearance and vehicle length. But also intercept

Is the slope of the linear model considered to be zero? Why or why not?
2. In addition, the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
3. From our linear regression model, the r-squared value is 0.7149, which means that roughly 70% of the variablilty of our dependent variable (miles-per-gallon) is explained using this linear model. 

## Summary Statistics on Suspension Coils
Q: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
A: The variance for all lots is well within the bounds of 100 lbs/in^2. However when we examine each lot individually we see that lot 1 and lot 2 have very low variability (<10 lbs/in^2) but lot 3 has an unacceptable variance of about 170 lbs/in^2.


## T-Tests on Suspension Coils
all lots -- with a p-value = 0.06028 we do not have sufficient evidence to reject the null hypothesis, though the p-value is so close to .05 one cannot shake the feeling that the mean is signicficantly different. But upon closer inspection we see that the mean of all lots PSI is 1498.78 which is indeed very close to 1500.

Lot 1 -- with a p value of 1, we can say with some certainty that the means are statistically similar.

lot 2 -- with a p value of 0.6072, we can say with some certainty that the means are statistically similar.

lot 3 -- with a p-value of 0.04168, we can say that the means are statistically different.

## Study Design: MechaCar vs Competition