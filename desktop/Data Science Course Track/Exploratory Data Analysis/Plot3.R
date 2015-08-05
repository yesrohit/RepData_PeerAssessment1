
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data[,1]=as.Date(data[,1],"%d/%m/%Y")
data2=(data[data[,1]>="2007-02-01" & data[,1]<="2007-02-02",])

data2[,1]=paste(data2[,1],data2[,2])
data3=strptime(data2[,1], "%Y-%m-%d %H:%M:%S")

png(file="plot3.png", width=480, height = 480)
plot(data3,data2$Sub_metering_1,type="l", xlab="", ylab="Energy sub metering", col="black");
lines(data3,data2$Sub_metering_2, col="red");
lines(data3,data2$Sub_metering_3, col="blue");
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c("black","red","blue" ))

dev.off()