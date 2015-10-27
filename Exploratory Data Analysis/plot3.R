source("Initiate.R")

baltimore <- DATABASE[DATABASE$fips=="24510",]
aggTotalsBaltimore <- aggregate(Emissions ~ year, baltimore,sum)

png("plot3.png")

library(ggplot2)

ggp <- ggplot(baltimore,aes(factor(year),Emissions,fill=type)) +
  geom_bar(stat="identity") +
  theme_bw() + guides(fill=FALSE)+
  facet_grid(.~type,scales = "free",space="free") + 
  labs(x="year", y=expression("Total PM2.5 Emission (Tons)")) + 
  labs(title=expression("PM2.5 Emissions, Baltimore"))

print(ggp)

dev.off()

