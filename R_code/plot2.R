##plot2
##first, set the right working directory
setwd("~/R.Studio/Exploratory_data_analysis/week1/CourseProject1")
##source the clean data code, to get the data for plot
source("C:/Users/pmeng2/Documents/R.Studio/Exploratory_data_analysis/week1/CourseProject1/R_code/Cleandata.R")
##create the png file, save to a local file
png(filename='plots/plot2.png',width=480,height=480,units='px')
datetime <- plotdata$date + plotdata$time
plot(datetime,plotdata$activepower, xlab = "",
     ylab='Global Active Power (kilowatts)', type = "l")
##colse the file
dev.off()