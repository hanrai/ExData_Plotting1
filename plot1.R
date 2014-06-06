## Read data. Data file name is household_power_consumption.txt
data.raw <- read.csv("household_power_consumption.txt", na.strings = "?", 
                      sep = ";", stringsAsFactors = FALSE)
data <- data.raw[data.raw$Date == "1/2/2007" | data.raw$Date == "2/2/2007", ]

## Plot
png(filename = "plot1.png", width = 480, height = 480)
hist(x = data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()
