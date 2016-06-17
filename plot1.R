
source("get_data.R")

png("./plot1.png", width = 480, height = 480) # these are the defailt values for width and height
with(part_data, hist(Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency" , col="red"))
dev.off()
