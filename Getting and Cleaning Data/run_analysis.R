#download and unzip
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
savedAs<-"dataset.zip"
download.file(url,destfile=savedAs, method="curl")
unzip(savedAs)
setwd(paste(getwd(), "/UCI HAR Dataset",sep="")) #jumps to unzipped folder

## Step 1: Merges the training and the test sets to create one data set.

#loading to data frames
test.activity <- read.table("test/y_test.txt", col.names="activity")
test.subjectID <- read.table("test/subject_test.txt", col.names="subjectID")
test.data <- read.table("test/X_test.txt")

train.activity <- read.table("train/y_train.txt", col.names="activity")
train.subjectID <- read.table("train/subject_train.txt", col.names="subjectID")
train.data <- read.table("train/X_train.txt")

#bind it together = merging
data <- rbind(
          cbind(test.subjectID, test.activity, test.data), 
          cbind(train.subjectID, train.activity, train.data)
          )

## Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
#load the feature's column names
features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
feature.names<-features[,2]

shift<-2 #amount of records before the features columns in the data table

#identify position of mean columns
feature.names.mean <- grep("mean", feature.names)

#identify position of std columns
feature.names.std <- grep("std", feature.names)




dataFiltered<-data[,c(1,2,feature.names.mean+shift,feature.names.std+shift)]

## Step 3: Uses descriptive activity names to name the activities in the data set
activities <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
# replace labels in data with label names
dataFiltered$activity <- activities[dataFiltered$activity, 2]


##Step 4: Appropriately labels the data set with descriptive variable names. 
features.names.filtered<-features[c(feature.names.mean,feature.names.std),2 ]
colnames(dataFiltered)=c("subjectID","activity",features.names.filtered)

##Step 5: 
colnames(dataFiltered)=gsub("\\(|\\)", "", colnames(dataFiltered)) #Removing brackets in the column name

dataAggregated <- aggregate(dataFiltered[, 3:ncol(dataFiltered)], by=list(subjectID = dataFiltered$subjectID,activity = dataFiltered$activity), mean)

write.table(dataAggregated, "../dataAggregated.txt", row.names=F)

