source("Initiate.R")

vehicles <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
vehiclesSCC <- SCC[vehicles,]$SCC
vehicles <- DATABASE[DATABASE$SCC %in% vehiclesSCC,]

baltimoreVehicles <- vehicles[vehicles$fips=="24510",]

png("plot5.png")

library(ggplot2)

ggp <- ggplot(baltimoreVehicles,aes(factor(year),Emissions)) +
  geom_bar(stat="identity",fill="grey",width=0.75) +
  theme_bw() +  guides(fill=FALSE) +
  labs(x="Years", y=expression("Total PM2.5 Emission (100k tons)")) + 
  labs(title=expression("PM2.5 Baltimore Motor Vehicle Emissions"))

print(ggp)

dev.off()

