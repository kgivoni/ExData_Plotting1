source("get_data.R")

png("./plot3.png", width = 480, height = 480)
plot(part_data$DateTime, part_data$Sub_metering_1, col="black", type="l", xlab="", ylab="Energy sub metering")
lines(part_data$DateTime, part_data$Sub_metering_2,col="red")
lines(part_data$DateTime, part_data$Sub_metering_3,col="blue")
legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1), ncol=1)

dev.off()