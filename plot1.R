source("load.R")

png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col = "white")

hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

dev.off()