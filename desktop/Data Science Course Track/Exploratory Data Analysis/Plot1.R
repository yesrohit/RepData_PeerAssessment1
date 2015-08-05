
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data[,1]=as.Date(data[,1],"%d/%m/%Y")
data2=(data[data[,1]>="2007-02-01" & data[,1]<="2007-02-02",])

png(file="plot1.png", width=480, height = 480)

hist(data2$Global_active_power, col="red",main="Global Active Power", xlab="Global Active Power (kilowatts")

dev.off()
