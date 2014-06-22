## Libraries
library(reshape2)

## Retrieve Data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "Dataset.zip")
unzip("Dataset.zip")

## Read in Training Data files
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainX <- read.table("UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("UCI HAR Dataset/train/Y_train.txt")

## Read in Test Data files
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
testX <- read.table("UCI HAR Dataset/test/X_test.txt")
testY <- read.table("UCI HAR Dataset/test/Y_test.txt")

## Read in Supplementary Information
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
featuresLabels <- read.table("UCI HAR Dataset/features.txt")

## Rename colummns in Training and Test data files
names(trainY) <- "Activity"
names(testY) <- "Activity"
names(trainSubject) <- "Subject"
names(testSubject) <- "Subject"
names(trainX) <- featuresLabels$V2
names(testX) <- featuresLabels$V2

## Combine Training data files into one dataframe
train <- cbind(trainSubject, trainY)
train <- cbind(train, trainX)

## Combine Test data files into one dataframe
test <- cbind(testSubject, testY)
test <- cbind(test, testX)

## Combine Training and Test Data into one dataframe
df <- rbind(train, test)

## Extract measurmeents on mean and std dev for each measurement
meanCols <- grep("*mean()*", names(df), value=TRUE)
stdevCols <- grep("*std()*", names(df), value=TRUE)
keepCols <- c("Subject", "Activity", meanCols, stdevCols)
df <- df[names(df) %in% keepCols]

## Assign descriptive activity names to Activities
for (i in 1:nrow(activityLabels)){
  df$Activity[df$Activity==i] <- 
    as.character(activityLabels$V2[activityLabels$V1==i])
}

## Average of each varaible for eact activity and each subject
melted <- melt(df, id.vars = c("Subject", "Activity")) 
cast <- dcast(melted, Subject + Activity ~ variable, mean)

## Save new tidy data set
write.table(cast, "tidyData.txt")
