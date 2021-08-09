#Delivery #1
library(dplyr)
options(scipen = 999)
# Import and read in the MechaCar_mpg.csv file as a data frame.
prototypes_data <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #read in dataset
head(prototypes_data)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns),
# Make sure your data meet the assumptions. ...
ggplot(prototypes_data,aes(x=mpg)) + geom_density() #visualize distribution using density plot
prototypes_matrix <- as.matrix(prototypes_data[,c("vehicle_length","vehicle_weight","spoiler_angle", "ground_clearance", "AWD", "mpg")]) #convert data frame into numeric matrix
cor(prototypes_matrix)

# Perform the linear regression analysis. ...
# and add the dataframe you created in Step 4 as the data parameter.
 
mpg_model <- lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=prototypes_data) #generate multiple linear regression model
# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(mpg_model)
#summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=prototypes_data)) #generate summary statics
# Save your MechaCarChallenge.RScript file to your GitHub repository.
# Ok.


# ### DELIVERABLE 2 ###
# In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
suspension_data <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #read in dataset
head(suspension_data)
# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
# load tidyverse library
library(tidyverse)
total_summary <- suspension_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table with multiple columns
head(total_summary)
# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
head(lot_summary)

### Deliverable 3
Lot1 <- t.test(subset(suspension_data, Manufacturing_Lot== "Lot1")$PSI,mu=1500)
Lot1

Lot2 <- t.test(subset(suspension_data, Manufacturing_Lot== "Lot2")$PSI,mu=1500)
Lot2
Lot3 <- t.test(subset(suspension_data, Manufacturing_Lot== "Lot3")$PSI,mu=1500)
Lot3

check_lot1 <- subset(suspension_data, Manufacturing_Lot== "Lot1")
check_lot1

check_lot3 <- subset(suspension_data, Manufacturing_Lot== "Lot3")
check_lot3

all_lots <- t.test(suspension_data$PSI,mu=1500)
all_lots
