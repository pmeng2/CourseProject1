##plot3
source("C:/Users/pmeng2/Documents/R.Studio/Exploratory_data_analysis/week1/CourseProject1/R_code/Cleandata.R")
png(filename='plots/plot3.png',width=480,height=480,units='px')
datetime <- plotdata$date + plotdata$time
plot(datetime,plotdata$sub1, xlab = "", ylab = "Energy sub metering", type = "l",
     col = "black")
lines(datetime,plotdata$sub2,  col = "red")
lines(datetime,plotdata$sub3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = "solid")
dev.off()