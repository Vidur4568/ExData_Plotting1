# Plot energy sub-metering over time for Feb 1-2, 2007

# Load filtered data
source("load_data.R")

# Open PNG graphics device
png("plot3.png", width = 480, height = 480)

# Plot Sub_metering_1 as the first line
plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

# Add Sub_metering_2 in red
lines(data$DateTime, data$Sub_metering_2, col = "red")

# Add Sub_metering_3 in blue
lines(data$DateTime, data$Sub_metering_3, col = "blue")

# Add legend to top right
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)  

# Close device
dev.off()
