## Coursera - Exploratory Data Analysis Project 1
## Plot 3
library(sqldf)
raw <- read.csv2.sql(file="./data/project1/household_power_consumption.txt", 
                     header=TRUE, 
                     sep=";",
                     na.strings="?",
                     sql="select * from file where Date =='1/2/2007' or Date =='2/2/2007'")

raw$dt <- paste(raw$Date, raw$Time)
raw$dt <- strptime(raw$dt, format="%d/%m/%Y %H:%M:%S")

png("Plot3.png", width=480, height=480, units="px")
plot(raw$dt, raw$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering")
lines(raw$dt, raw$Sub_metering_2, col="red")
lines(raw$dt, raw$Sub_metering_3, col="blue")
legend("topright", lty=1,
       col=c("black", "red", "blue"),
       legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"))
dev.off()


