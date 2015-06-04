data <- read.table("household_power_consumption.txt",sep = ";",header = T)
data <- data[data$Date == "2/2/2007"|data$Date == "1/2/2007",]
a_pow<-  as.numeric(as.character(data$Global_active_power))
time <- data$Time
date <- data$Date
t <- paste(time,date)
xt <-  strptime(t,"%H:%M:%S %d/%m/%Y")
plot(xt,a_pow,type="l",ylab="Global Active Power(kilowatts)",xlab="")
dev.copy(png,"plot2.png")
dev.off()
