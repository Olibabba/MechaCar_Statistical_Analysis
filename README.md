# MechaCar_Statistical_Analysis
MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.


## Linear Regression to Predict MPG

In order to determine which factors impacted MPG, we performed a multiple linear regression analysis on MPG compared to AWD, ground clearance, spoiler angle, vehicle weight, and vehicle length.

![Linear Regression](https://github.com/Olibabba/MechaCar_Statistical_Analysis/blob/main/Resources/LinearRegression.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
1. Ground clearance and vehicle length are shown to significantly impact MPG. But the intercept is also shown to provide a non-random amount of variance, implying there are other factors we have not considered.

Is the slope of the linear model considered to be zero? Why or why not?
2. The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
3. From our linear regression model, the r-squared value is 0.7149, which means that roughly 70% of the variablilty of our dependent variable (miles-per-gallon) is explained using this linear model. Overall this model is likely missing significant variables, and would fail to consistently predict the mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
Q: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![Total Summary](https://github.com/Olibabba/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)
![Lot Summary](https://github.com/Olibabba/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

A: The variance for all lots combined is well within the bounds of 100 lbs/in^2. However when we examine each lot individually we see that lot 1 and lot 2 have very low variability (<10 lbs/in^2) but lot 3 has an unacceptable variance of about 170 lbs/in^2.

## T-Tests on Suspension Coils
all lots -- with a p-value = 0.06028 we do not have sufficient evidence to reject the null hypothesis, though the p-value is so close to .05 one cannot shake the feeling that the mean is signicficantly different. But upon closer inspection we see that the mean of all lots PSI is 1498.78 which is indeed very close to 1500.
![All Lot T-Test](https://github.com/Olibabba/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

Lot 1 -- with a p value of 1, we can say with some certainty that the means are statistically similar.
![Lot 1 T-Test](https://github.com/Olibabba/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

lot 2 -- with a p value of 0.6072, we can say with some certainty that the means are statistically similar.
![Lot 2 T-Test](https://github.com/Olibabba/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

lot 3 -- with a p-value of 0.04168, we can say that the means are statistically different.
![Lot 3 T-Test](https://github.com/Olibabba/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

## Study Design: MechaCar vs Competition

With the Mechacar well analyzed we think it is time to compare against our competitors. This will ideally be a comparison that we can show the public to provide statistical proof that Mechacar out performs the competition. 

In these times of inflation, high gas prices, and disrupted supply chains, there are three primary metrics we recommend comparing: cost, fuel-efficiency, and reliability (in terms of frequency of repairs needed as well as speed of repairs or availabilty of parts)

Our null hypothesis will be that there is no difference between Mechacar and our competitors, and our alternative hypothesis is that Mechacar is cheaper, more fuel efficient, and more reliable. 

We will perform a Two-Sample T-Test in order to compare the metrics of MechaCar and our competitors.

While we have cost and fuel efficiency data on Mechacar, we will need to aquire data on reliability. This could take the form of time between needed repairs, miles driven between repairs, or even avg cost of repairs. This data will need to be scrubbed of repairs do to accidents or opperator error. Reliability data can also include time taken to repair, ease of repair, or time spent waiting for parts.

We will need to collect the same data from our competitors.