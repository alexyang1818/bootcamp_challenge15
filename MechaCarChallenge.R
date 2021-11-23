library(dplyr)

# import and analyze MechaCar_mpg.csv file
mpg <- read.csv("MechaCar_mpg.csv")
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg)
summary(mpg_lm)

# import and analyze Suspension_Coil.csv file
coil <- read.csv("Suspension_Coil.csv")
total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
print(total_summary)
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
print(lot_summary)
