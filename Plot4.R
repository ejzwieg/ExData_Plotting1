## Coursera - Exploratory Data Analysis Project 1
## Plot 4
library(sqldf)
raw <- read.csv2.sql(file="./data/project1/household_power_consumption.txt", 
                     header=TRUE, 
                     sep=";",
                     na.strings="?",
                     sql="select * from file where Date =='1/2/2007' or Date =='2/2/2007'")

raw$dt <- paste(raw$Date, raw$Time)
raw$dt <- strptime(raw$dt, format="%d/%m/%Y %H:%M:%S")

png("Plot4.png", width=480, height=480, units="px")

dev.off()



