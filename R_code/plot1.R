##plot1
##first, set the right working directory
setwd("~/R.Studio/Exploratory_data_analysis/week1/CourseProject1")
##source the clean data code, to get the data for plot
source("C:/Users/pmeng2/Documents/R.Studio/Exploratory_data_analysis/week1/CourseProject1/R_code/Cleandata.R")
##create the png file, save to a local file
png(filename='plots/plot1.png',width=480,height=480,units='px')
hist(plotdata$activepower,main='Global Active Power',
     xlab='Global Active Power (kilowatts)',col='red')
##colse the file
dev.off()
