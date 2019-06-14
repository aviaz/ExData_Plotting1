library(dplyr)

prepare_data = function() {
  unzip("exdata_data_household_power_consumption.zip")
}
load_data = function() {
  prepare_data();
  
  start_date = as.POSIXct("01/02/2007", tz = "", "%d/%m/%Y")
  end_date = as.POSIXct("03/02/2007", tz = "", "%d/%m/%Y")
  df = read.csv("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings = c("?"))
  df = transform(df,Date = as.POSIXct(Date,tz = "", "%d/%m/%Y"))
  df = filter(df, Date>=start_date & Date<end_date)
  df
}