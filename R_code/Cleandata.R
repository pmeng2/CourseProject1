## library all the package needed first
## the package to tidy the data
## the package to convert the data
library(dplyr)
library(lubridate)
## first, download and upzip the data to the local working directory
## to read the data into R, change the sep to ";", setting thr stringAsFactor to False
## turn the data into a tbl_df
## remove the original data frame
data <- read.delim("household_power_consumption.txt", sep = ";", stringsAsFactors = F)
dat <- tbl_df(data)
rm(data)
## change the "Date" column from characters to Dates
## filter and get the data for 2007-02-01 and 2007-02-02
dat <- mutate(dat, Date = dmy(Date))
dat_select <- filter(dat, Date == "2007-02-01" | Date == "2007-02-02")
## rename the columns, less typing
names(dat_select) <- c("date", "time", "activepower", "reactivepower", "voltage",
                       "intensity", "sub1", "sub2","sub3")
plotdata <- mutate(dat_select, time = hms(time), activepower = as.numeric(activepower),
                   reactivepower = as.numeric(reactivepower), 
                   voltage = as.numeric(voltage), intensity = as.numeric(intensity),
                   sub1 = as.numeric(sub1), sub2 = as.numeric(sub2),
                   sub3 = as.numeric(sub3))