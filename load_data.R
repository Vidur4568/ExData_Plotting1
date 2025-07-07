# Load and clean household power consumption data for Feb 1–2, 2007

# Read the dataset 
data <- read.table("data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

# Convert Date column from character to Date class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Filter for only Feb 1 and Feb 2, 2007
data <- subset(data, Date == as.Date("2007-02-01") | 
                 Date == as.Date("2007-02-02"))

# Combine Date and Time columns into one DateTime column
data$DateTime <- strptime(paste(data$Date, data$Time), 
                          format = "%Y-%m-%d %H:%M:%S")
 