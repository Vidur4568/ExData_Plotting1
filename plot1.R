# plot1.R
# Create histogram of Global Active Power for Feb 1-2, 2007

# Load the data (make sure load_data.R is in the same folder)
source("load_data.R")

# Open PNG device
png(filename = "plot1.png", width = 480, height = 480)

# Draw histogram
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

# Close the device to save file
dev.off()
