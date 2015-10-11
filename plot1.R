datafile <- "household_power_consumption.txt"
data = read.table(datafile, header = TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#head(data)

d <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

png("plot1.png", width=480, height=480)
hist(as.numeric(d$Global_active_power[d$Global_active_power != "?"]), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

