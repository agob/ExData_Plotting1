file <- "../household_power_consumption.txt"
data <- read.table(file,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data) 
attach(data)
## We only need data of 2 days.
subdata <- data[Date == "1/2/2007" | Date == "2/2/2007", ]
attach(subdata)
x <- paste(Date, Time)
subdata$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(subdata) <- 1:nrow(subdata)
dim(subdata) # 2880   10
attach(subdata)