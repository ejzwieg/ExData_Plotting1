## Coursera - Exploratory Data Analysis Project 1
## Plot 1
library(sqldf)
raw <- read.csv2.sql(file="./data/project1/household_power_consumption.txt", 
                     header=TRUE, 
                     sep=";",
                     na.strings="?",
                     sql="select * from file where Date =='1/2/2007' or Date =='2/2/2007'")

raw$dt <- paste(raw$Date, raw$Time)
raw$dt <- strptime(raw$dt, format="%d/%m/%Y %H:%M:%S")

png("Plot1.png", width=480, height=480, units="px")
hist(raw$Global_active_power, 
     main="Global Active Power",
     col="red",
     xlab="Global Active Power (kilowatts)")
dev.off()