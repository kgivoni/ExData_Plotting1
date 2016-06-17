
# load data to memory
# ------------------------------
# original text file location:
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# assumption - txt file is under "data" subdirectory, relatively to where this sciprt is running.
all_data <- read.csv("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

all_data$DateTime <- strptime(paste(all_data$Date, all_data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
all_data$Week_day <- strftime(all_data$DateTime,'%A')
part_data <- subset(all_data, all_data$DateTime >= "2007-02-01")
part_data <- subset(part_data, part_data$DateTime < "2007-02-03")


