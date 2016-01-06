powerhouse <- read.csv("household_power_consumption.txt",sep=";")
par(mfcol = c(1, 1), mar = c(4, 4, 2, 2))
house <- powerhouse[66638:69517,]

dates <- as.Date(house$Date, "%d/%m/%Y")
times <- house$Time
x <- paste(dates, times)
w <- strptime(x, "%Y-%m-%d %H:%M:%S")

plot(w, house$Sub_metering_1, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(w, house$Sub_metering_2, col = "red" )
lines(w, house$Sub_metering_3, col = "blue" )

legend("topright", pch = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png" )
dev.off()