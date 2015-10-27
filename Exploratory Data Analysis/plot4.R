source("Initiate.R")

combustionRelated <- grepl("comb", SCC$SCC.Level.One, ignore.case=TRUE)
coalRelated <- grepl("coal", SCC$SCC.Level.Four, ignore.case=TRUE) 
coalCombustion <- (combustionRelated & coalRelated)
combustionSCC <- SCC[coalCombustion,]$SCC
combustion <- DATABASE[DATABASE$SCC %in% combustionSCC,]

png("plot4.png")

library(ggplot2)

ggp <- ggplot(combustion,aes(factor(year),Emissions/10^5)) +
  geom_bar(stat="identity",fill="darkgrey",width=0.75) +
  theme_bw() +  guides(fill=FALSE) +
  labs(x="Years", y=expression("Total PM2.5 Emission (100k tons)")) + 
  labs(title=expression("PM2.5 Coal Combustion USA"))

print(ggp)

dev.off()

