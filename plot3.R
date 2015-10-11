datafile <- "household_power_consumption.txt"
data = read.table(datafile, header = TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

datetime <- strptime(paste(d$Date, d$Time), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(datetime, as.numeric(d$Sub_metering_1[d$Sub_metering_1 != "?"]),type = "l",xlab="",ylab="Energy sub metering")
lines(datetime, as.numeric(d$Sub_metering_2[d$Sub_metering_3 != "?"]),type = "l",col="red")
lines(datetime, as.numeric(d$Sub_metering_3[d$Sub_metering_3 != "?"]),type = "l",col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black", "red", "blue"))
dev.off()

