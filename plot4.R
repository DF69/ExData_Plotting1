powerhouse <- read.csv("household_power_consumption.txt",sep=";")
par(mfcol = c(2, 2), mar = c(4, 4, 2, 2))
house <- powerhouse[66638:69517,]

dates <- as.Date(house$Date, "%d/%m/%Y")
times <- house$Time
x <- paste(dates, times)
times <- strptime(x, "%Y-%m-%d %H:%M:%S")
with(house, plot(w, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "" ))

plot(w, house$Sub_metering_1, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(w, house$Sub_metering_1, col = "black" )
lines(w, house$Sub_metering_2, col = "red" )
lines(w, house$Sub_metering_3, col = "blue" )
# legend("topright", pch = 1 , col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

with(house, plot(w, Voltage, type = "l", ylab = "Voltage", xlab = "datetime" ))

with(house, plot(w, Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime" ))

dev.copy(png, file = "plot4.png" )
dev.off()