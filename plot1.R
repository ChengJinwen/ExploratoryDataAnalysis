data <- read.table("household_power_consumption.txt",sep = ";",header = T)
data <- data[data$Date == "2/2/2007"|data$Date == "1/2/2007",]
plotdata <- as.numeric(as.character(data$Global_active_power))
hist(plotdata,col="red",xlab="Global Active Power(kilowatts)",ylab="Frequency",main="Global Active Power",xlim = c(0,6))
dev.copy(png,"plot1.png")
dev.off()