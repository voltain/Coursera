source("Initiate.R")

baltimore <- DATABASE[DATABASE$fips=="24510",]

aggTotalsBaltimore <- aggregate(Emissions ~ year, baltimore,sum)

png("plot2.png")

barplot(
  aggTotalsBaltimore$Emissions,
  names.arg=aggTotalsBaltimore$year,
  xlab="Year",
  ylab="PM2.5 Emissions (tons)",
  main="Total PM2.5 Baltimore City Emissions"
)

dev.off()
