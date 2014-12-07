## Coursera - Exploratory Data Analysis Project 1
## Plot 2
library(sqldf)
raw <- read.csv2.sql(file="./data/project1/household_power_consumption.txt", 
                     header=TRUE, 
                     sep=";",
                     na.strings="?",
                     sql="select * from file where Date =='1/2/2007' or Date =='2/2/2007'")

raw$dt <- paste(raw$Date, raw$Time)
raw$dt <- strptime(raw$dt, format="%d/%m/%Y %H:%M:%S")

png("Plot2.png", width=480, height=480, units="px")
plot(raw$dt, raw$Global_active_power, 
     type="l",
     ylab="Global Active Power (kilowatts")
dev.off()