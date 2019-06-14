source("load_data.R")

df = load_data()

#plot to device (can't combine the calls because we can't set size to dev.copy)
par(mfrow = c(1, 1), mfcol = c(1, 1))
hist(df$Global_active_power, col = "red", xlab = "Global Active Power (killowatts)", ylab = "Frequency", main = "Global Active Power")

#plot to png
png("plot1.png", width=480, height=480)
par(mfrow = c(1, 1), mfcol = c(1, 1))
hist(df$Global_active_power, col = "red", xlab = "Global Active Power (killowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off()
