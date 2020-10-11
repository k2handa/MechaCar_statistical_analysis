# MechaCar_statistical_analysis

## Project overvie 
AutosRUs’ newest prototype vehicle, the "MechaCar", is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.The propose of the project is to  help Jeremy and the data analytics team do the following:
1) Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2) Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3) Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4) Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, write a summary interpretation of the findings.

## Linear Regression to Predict MPG
Design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. First we will see some of the data we are working with

![MechaCar import table](https://github.com/k2handa/MechaCar_statistical_analysis/blob/main/Resources/MechaCar%20import%20table.png)


### Linear Regression Result

![LM](https://github.com/k2handa/MechaCar_statistical_analysis/blob/main/Resources/LM.png)

![Deliverable1_Result1](/Resources/Deliverable1_Result2.png)

The Vehicle weight and ground clearance coefficients provided a non-random amount of variance to mpg values in the dataset.looking at the slope of the linear model is considered to be not zero because the Coefficient values are not equal to 0.

since the p-value is below 0.05 we have sufficient evidence to reject the null hypothesis. Also, Multiple R-squared values is 0.7149 which means 71.5% of the variance in the mpg can be predicted by all variables. The adjusted R-squared value is 0.6825 which means  68% of the variance in the mpg can be predicted by all variables. Based on the Multiple R-squared,  Adjusted R-squared and p-value values linear model predicts mpg of MechaCar prototypes effectively. 

