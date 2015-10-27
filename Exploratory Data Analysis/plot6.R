source("Initiate.R")



vehicles <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
vehiclesSCC <- SCC[vehicles,]$SCC
vehicles <- DATABASE[DATABASE$SCC %in% vehiclesSCC,]

vehiclesBaltimore <- vehicles[vehicles$fips=="24510",]
vehiclesBaltimore$city <- "Baltimore City"

vehiclesLA <- vehicles[vehicles$fips=="06037",]
vehiclesLA$city <- "Los Angeles"


both <- rbind(vehiclesBaltimore,vehiclesLA)

png("plot6.png")

library(ggplot2)
 
ggp <- ggplot(both, aes(x=factor(year), y=Emissions, fill=city)) +
 geom_bar(aes(fill=year),stat="identity") +
 facet_grid(scales="free", space="free", .~city) +
 guides(fill=FALSE) + theme_bw() +
 labs(x="Years", y=expression("Total PM2.5 Emission (1000 Tons)")) + 
 labs(title=expression("PM2.5 Motor Vehicle Baltimore & LA Emissions"))
 
print(ggp)

dev.off()

