source("load_data.R")

df = load_data()
df[, "datetime"] = as.POSIXct(paste(df$Date, df$Time), tz = "", "%Y-%m-%d %H:%M:%S")

#plot to device (can't combine the calls because we can't set size to dev.copy)
par(mfrow = c(1, 1), mfcol = c(1, 1))
plot(x = df$datetime, y = df$Global_active_power, xlab = "", ylab = "Global Active Power (killowatts)", main = "", type = "l")

#plot to png
png("plot2.png", width=480, height=480)
par(mfrow = c(1, 1), mfcol = c(1, 1))
plot(x = df$datetime, y = df$Global_active_power, xlab = "", ylab = "Global Active Power (killowatts)", main = "", type = "l")
dev.off()
