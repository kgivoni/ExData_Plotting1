source("get_data.R")

png("./plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))
# first graph
plot(part_data$DateTime, part_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# second graph 
plot(part_data$DateTime, part_data$Voltage, type="l", xlab="datetime", ylab="Voltage")

# third graph
plot(part_data$DateTime, part_data$Sub_metering_1, col="black", type="l", xlab="", ylab="Energy sub metering")
lines(part_data$DateTime, part_data$Sub_metering_2,col="red")
lines(part_data$DateTime, part_data$Sub_metering_3,col="blue")
legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1), ncol=1,box.lwd=0)

# fourth graph
plot(part_data$DateTime, part_data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()