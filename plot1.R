if(!file.exists('data.zip')){
  url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
  
  download.file(url,destfile = "D:/Course data/New folder/data.zip")
}

unzip("D:/Course data/New folder/data.zip")

data<-read.table("household_power_consumption.txt",header = TRUE, sep= ";")

names(data)
lapply(data, class)

data$Date[1:10]

?strptime

hist(as.numeric(as.character(data$Global_active_power)),
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")