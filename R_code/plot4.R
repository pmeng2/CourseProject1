##plot3
##first, set the right working directory
setwd("~/R.Studio/Exploratory_data_analysis/week1/CourseProject1")
##source the clean data code, to get the data for plot
source("C:/Users/pmeng2/Documents/R.Studio/Exploratory_data_analysis/week1/CourseProject1/R_code/Cleandata.R")
##create the png file, save to a local file
png(filename='plots/plot4.png',width=480,height=480,units='px')
par(mfrow=c(2,2))
datetime <- plotdata$date + plotdata$time
##1
plot(datetime,plotdata$activepower, xlab = "",
     ylab='Global Active Power', type = "l")
##2
plot(datetime,plotdata$voltage, xlab = "datetime",
     ylab='Voltage', type = "l")
##3
plot(datetime,plotdata$sub1, xlab = "", ylab = "Energy sub metering", type = "l",
     col = "black")
lines(datetime,plotdata$sub2,  col = "red")
lines(datetime,plotdata$sub3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = "solid")
##4
plot(datetime,plotdata$reactivepower, xlab = "datetime",
     ylab='Global_reactive_power', type = "l")
##colse the file
dev.off()