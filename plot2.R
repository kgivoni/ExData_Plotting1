source("get_data.R")

png("./plot2.png", width = 480, height = 480) # these are the defailt values for width and height
plot(part_data$DateTime, part_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
