### MechaCar_Statistical_Analysis
Mod15 R and stats

## Linear Regression to Predict MPG

# Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables ground_clearance and vehicle_length as indicated by the low precent (commonly a p-value of .05 or less 
interpreted roughly as, there's a 5% chance or less of this happening just due to random variation) 
The *** next to those to variables indicates the same and is taken to mean that the result is significant. 

# Is the slope of the linear model considered to be zero? Why or why not?
 A significant intercept could mean that the significant features (such as weight and horsepower) 
may need scaling or transforming to help improve the predictive power of the model. Alternatively, it may mean that there 
are other variables that can help explain the variability of our dependent variable that have not been included in our model. 

# Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
There are other variables that may help explain the variability of our dependent variable that have not been included in this model. 
Depending on the dataset and desired performance of the model, one may want to change the independent variables and/or 
transform them and then re-evaluate your coefficients and significance.

## Interpretion of the suspension coil summary statistics
The MechaCar Suspension data shows that this dataset, the weight capacities of multiple suspension coils that were tested did not determine that 
the manufacturing process is consistent across production lots.# Groups:   

Manufacturing_Lot's [3]

  Manufacturing_Lot  Mean Median Variance     SD
  <chr>             <dbl>  <dbl>    <dbl>  <dbl>
1 Lot1              1500   1500     0.980  0.990
2 Lot2              1500.  1500     7.47   2.73 
3 Lot3              1496.  1498.  170.    13.0  
> 

The suspension coil’s PSI continuous variable across all manufacturing lots was not necessarily consistant.
	One Sample t-test

data:  subset(suspension_data, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 

> Lot2 <- t.test(subset(suspension_data, Manufacturing_Lot== "Lot2")$PSI,mu=1500)
> Lot2

	One Sample t-test

data:  subset(suspension_data, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 

> Lot3 <- t.test(subset(suspension_data, Manufacturing_Lot== "Lot3")$PSI,mu=1500)
> Lot3

	One Sample t-test

data:  subset(suspension_data, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 


## Deliverable 4
A significant intercept could mean that the significant features such as weight and horsepower may need scaling interpteting to help improve the predictive power of the vehicle. 
Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model. 

A null hypothesis: Number of passengers in the Vehicle

Statistical test is described: Possible total weight in vehicle verses size of the vehicle and how it peforms.

Data for the statistical test: # of possible vehicle passwngers and effect on vehicle performace.