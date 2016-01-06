powerhouse <- read.csv("household_power_consumption.txt",sep=";")
par(mfcol = c(1, 1), mar = c(4, 4, 2, 2))
house <- powerhouse[66638:69517,]

dates <- as.Date(house$Date, "%d/%m/%Y")
times <- house$Time
x <- paste(dates, times)
w <- strptime(x, "%Y-%m-%d %H:%M:%S")

with(house, plot(w, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "" ))

dev.copy(png, file = "plot2.png")
dev.off()