library(plyr)
library(reshape2)

## All helper functions defined in this file
source("helper.R")

## Function to download the files and unzip it.Function is defined in helper.R
getFiles()

## Read labels
activityLabel <- read.table(file = "UCI HAR Dataset/activity_labels.txt", 
                            header = FALSE, sep = " ", 
                            col.names = c("ActivityCode","Activity"))
features <- read.table(file = "UCI HAR Dataset/features.txt", header = FALSE, 
                       sep = " ", col.names = c("FeatureCode","Feature"))

## Get the mean & standard deviation field positions
x_cols <- grep("mean\\(\\)|std\\(\\)", features$Feature)

## Make syntactically valid names
x_colnames <- make.names(names = gsub("\\(|\\)","", features$Feature), unique = TRUE)

## Load test data. Function is defined in helper.R
testData <- getData("test", x_colnames, x_cols, activityLabel)

## Load train data. Function is defined in helper.R
trainData <- getData("train", x_colnames, x_cols, activityLabel)

## Merge into one dataset
allData <- rbind(testData,trainData)

## Melt data
meltData <- melt(allData, id = c("SubjectCode","ActivityCode", "Activity"), measure.vars = x_colnames[x_cols])

## Create tidy tidy data set with the average of each variable for each activity and each subject
tidyData <- dcast(meltData, SubjectCode + Activity ~ variable, mean)

## Write to file
write.table(tidyData, file = "tidy_data.txt", quote = TRUE, sep = ",", row.names = FALSE)
