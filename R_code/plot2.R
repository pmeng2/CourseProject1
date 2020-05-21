##plot2
source("C:/Users/pmeng2/Documents/R.Studio/Exploratory_data_analysis/week1/CourseProject1/R_code/Cleandata.R")
png(filename='plots/plot2.png',width=480,height=480,units='px')
datetime <- plotdata$date + plotdata$time
plot(datetime,plotdata$activepower, xlab = "",
     ylab='Global Active Power (kilowatts)', type = "l")
dev.off()