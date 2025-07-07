# plot2.R
# Plot Global Active Power over time for Feb 1-2, 2007

# Load the filtered data
source("load_data.R")

# Open PNG graphics device
png("plot2.png", width = 480, height = 480)

# Create the line plot
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Close the device to save the file
dev.off()
