source("Initiate.R")

aggTotals <- aggregate(Emissions ~ year,DATABASE, sum)

png("plot1.png")

barplot(
  (aggTotals$Emissions)/10^6,
  names.arg=aggTotals$year,
  xlab="Year",
  ylab="PM2.5 Emissions (mil. tons)",
  main="Total PM2.5 USA Emissions"
)

dev.off()

