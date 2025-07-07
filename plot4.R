# 2x2 panel plot for household power consumption data

# Load filtered data
source("load_data.R")

# Open PNG device
png("plot4.png", width = 480, height = 480)

# Set 2x2 layout
par(mfrow = c(2, 2))

# 1. Global Active Power
plot(data$DateTime, data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

# 2. Voltage
plot(data$DateTime, data$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

# 3. Energy sub metering
plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

# 4. Global Reactive Power
plot(data$DateTime, data$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

# Close device
dev.off()
