data <- read.table("household_power_consumption.txt",sep = ";",header = T)
data <- data[data$Date == "2/2/2007"|data$Date == "1/2/2007",]
s1 <- as.numeric(as.character(data$Sub_metering_1))
s2 <- as.numeric(as.character(data$Sub_metering_2))
s3 <- as.numeric(as.character(data$Sub_metering_3))
time <- data$Time
date <- data$Date
t <- paste(time,date)
xt <-  strptime(t,"%H:%M:%S %d/%m/%Y")
plot(xt,s1,type="l",ylab="Energy sub metering",xlab="")
lines(xt,s2,col="red")
lines(xt,s3,col="blue")
legend("topright", pch = "¡ª¡ª", col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),text.width=55000)
dev.copy(png,"plot3.png")
dev.off()