## Read data. Data file name is household_power_consumption.txt
data.raw <- read.csv("household_power_consumption.txt", na.strings = "?", 
                      sep = ";", stringsAsFactors = FALSE)
data <- data.raw[data.raw$Date == "1/2/2007" | data.raw$Date == "2/2/2007", ]

## Plot
png(filename = "plot3.png", width = 480, height = 480)

x <- seq(as.POSIXct("2007-02-01 00:00:00"), by="mins", length.out=24*60*2)
with(data, {
        plot(x, Sub_metering_1, ylab = "Energy sub metering", 
             xlab = "", type = "l")
        lines(x, Sub_metering_2, col = "red")
        lines(x, Sub_metering_3, col = "blue")
})

legend("topright", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = 1)

dev.off()
