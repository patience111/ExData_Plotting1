a<-read.csv("household_power_consumption.txt",sep=";")
df<-paste(a$Date,a$Time)
newa<-cbind(a,df)
needa<-newa[66637:69516,]
png("plot1.PNG",width=480,height=480)
hist(as.numeric(as.character(needa$Global_active_power)),breaks=12,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.off()