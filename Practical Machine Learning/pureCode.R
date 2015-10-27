library(caret)
trainingOriginal <- read.csv(file="data/pml-training.csv", header=TRUE, as.is = TRUE, stringsAsFactors = FALSE, sep=',', na.strings=c('NA','','#DIV/0!'))
testingOriginal <- read.csv(file="data/pml-testing.csv", header=TRUE, as.is = TRUE, stringsAsFactors = FALSE, sep=',', na.strings=c('NA','','#DIV/0!'))
trainingOriginal$classe <- as.factor(trainingOriginal$classe)  


NAindex <- apply(trainingOriginal,2,function(x) {sum(is.na(x))}) 
trainingOriginal <- trainingOriginal[,which(NAindex == 0)]

NAindex <- apply(testingOriginal,2,function(x) {sum(is.na(x))}) 
testingOriginal <- testingOriginal[,which(NAindex == 0)]


v <- which(lapply(trainingOriginal, class) %in% "numeric")
preObj <-preProcess(trainingOriginal[,v],method=c('knnImpute', 'center', 'scale'))
preProcessedTraining <- predict(preObj, trainingOriginal[,v])
preProcessedTraining$classe <- trainingOriginal$classe

preProcessedTesting <-predict(preObj,testingOriginal[,v])

set.seed(42)

inTrain = createDataPartition(preProcessedTraining$classe, p = 0.6, list=FALSE)
training = preProcessedTraining[inTrain,]
testing = preProcessedTraining[-inTrain,]

model <- train(classe ~., method="rf", data=training, trControl=trainControl(method='cv'), number=7, allowParallel=TRUE )
saveRDS(model , "rfmodel.RDS")

trainingPred <- predict(modFit, training)
confusionMatrix(trainingPred, training$classe)

testingPred <- predict(model, testing)
confusionMatrix(testingPred, testing$classe)

testingPred <- predict(model, preProcessedTesting)
testingPred
result <- cbind(testingOriginal, testingPred)
