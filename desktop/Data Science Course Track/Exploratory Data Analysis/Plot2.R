
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data[,1]=as.Date(data[,1],"%d/%m/%Y")
data2=(data[data[,1]>="2007-02-01" & data[,1]<="2007-02-02",])

data2[,1]=paste(data2[,1],data2[,2])
data3=strptime(data2[,1], "%Y-%m-%d %H:%M:%S")

png(file="plot2.png", width=480, height = 480)

plot(data3,data2$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()