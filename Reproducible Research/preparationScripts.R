# load
if(!(file.exists("activity.csv") { unzip("activity.zip")  }
dataNA<-read.csv("activity.csv")
data<-na.omit(dataNA)

#1
dataByDate<-aggregate(steps ~ date, data, sum)

hist(dataByDate$steps)
summary(dataByDate)

#2
dataByInterval<-aggregate(steps ~ interval, data, mean)
plot(dataByInterval$interval, dataByInterval$steps, type="l")

dataByInterval$interval[dataByInterval$steps==max(dataByInterval$steps)]


#3 filling the gap
sum(is.na(dataNA))
newDataNA<-dataNA

x<-0

#replacing
for (i in 1:nrow(dataNA)){
  if (is.na(dataNA$steps[i])){
    newDataNA$steps[i]<-round(dataByInterval$steps[dataByInterval$interval==dataNA$interval[i]],0)
  }
}

dataByDate<-aggregate(steps ~ date, newDataNA, sum)

hist(dataByDate$steps)
summary(dataByDate)

#4
data<-newDataNA

library(lubridate)
data$weekday <- wday(as.Date(data$date))-1
data$weektype[data$weekday<6]<-"weekday"
data$weektype[data$weekday>5]<-"weekend"

dataByWeektype <- aggregate(steps ~ interval + weektype, data, mean)

library(ggplot2)
qplot(interval, 
      steps, 
      data = dataByWeektype, 
      geom=c("line"),
      xlab = "interval", 
      ylab = "# steps", 
      main = "") +
  facet_wrap(~ weektype, ncol = 1)


