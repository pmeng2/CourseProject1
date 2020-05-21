##plot1
source("C:/Users/pmeng2/Documents/R.Studio/Exploratory_data_analysis/week1/CourseProject1/R_code/Cleandata.R")
png(filename='plots/plot1.png',width=480,height=480,units='px')
hist(plotdata$activepower,main='Global Active Power',
     xlab='Global Active Power (kilowatts)',col='red')
dev.off()
