powerhouse <- read.csv("household_power_consumption.txt",sep=";")
par(mfcol = c(1, 1), mar = c(4, 4, 2, 2))
house <- powerhouse[66638:69517,]

with(house, hist(as.numeric(Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))

dev.copy(png, file = "plot1.png")
dev.off()