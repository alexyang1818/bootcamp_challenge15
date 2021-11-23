library(dplyr)
mpg <- read.csv("MechaCar_mpg.csv")
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg)
summary(mpg_lm)
