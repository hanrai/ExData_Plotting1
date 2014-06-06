## Read data. Data file name is household_power_consumption.txt
data.raw <- read.csv("household_power_consumption.txt", na.strings = "?", 
                      sep = ";", stringsAsFactors = FALSE)
data <- data.raw[data.raw$Date == "1/2/2007" | data.raw$Date == "2/2/2007", ]

## Plot
png(filename = "plot2.png", width = 480, height = 480)
x <- seq(as.POSIXct("2007-02-01 00:00:00"), by="mins", length.out=24*60*2)
plot(x, data$Global_active_power, ylab = "Global Active Power (kilowatts)", 
     xlab = "", type = "l")
dev.off()
