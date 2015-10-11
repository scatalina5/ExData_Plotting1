datafile <- "household_power_consumption.txt"
data = read.table(datafile, header = TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

datetime <- strptime(paste(d$Date, d$Time), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(datetime, as.numeric(d$Global_active_power[d$Global_active_power != "?"]),type = "l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

