source("load_data.R")

df = load_data()
df[, "datetime"] = as.POSIXct(paste(df$Date, df$Time), tz = "", "%Y-%m-%d %H:%M:%S")

#plot to device (can't combine the calls because we can't set size to dev.copy)
par(mfrow = c(2, 2), mfcol = c(2, 2))

#plot 4.1
plot(x = df$datetime, y = df$Global_active_power, xlab = "", ylab = "Global Active Power", main = "", type = "l")

#plot 4.2
plot(x = df$datetime, y = df$Sub_metering_1, col = "black", xlab = "", ylab = "Energy sub metering", main = "", type = "l")
lines(x = df$datetime, y = df$Sub_metering_2, type = "l", col = "red")
lines(x = df$datetime, y = df$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

#plot 4.3
plot(x = df$datetime, y = df$Voltage, xlab = "datetime", ylab = "Voltage", main = "", type = "l")

#plot 4.4
plot(x = df$datetime, y = df$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", main = "", type = "l")

########################################################################

#plot to png
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2), mfcol = c(2, 2))

#plot 4.1
plot(x = df$datetime, y = df$Global_active_power, xlab = "", ylab = "Global Active Power", main = "", type = "l")

#plot 4.2
plot(x = df$datetime, y = df$Sub_metering_1, col = "black", xlab = "", ylab = "Energy sub metering", main = "", type = "l")
lines(x = df$datetime, y = df$Sub_metering_2, type = "l", col = "red")
lines(x = df$datetime, y = df$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

#plot 4.3
plot(x = df$datetime, y = df$Voltage, xlab = "datetime", ylab = "Voltage", main = "", type = "l")

#plot 4.4
plot(x = df$datetime, y = df$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", main = "", type = "l")

dev.off()
