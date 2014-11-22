Getting and Cleaning Data Course Project: Code Book for Tidy data set
=====================================================================

This data set is derived based on the requirements in the course project. The data set includes average for all the variables for each activity and each subject. There are 30 subjects and 6 activities so the data set shall have 180 rows.

Original data set and code book
-------------------------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The original data set and code book based on which this data set is derived is available at following location: -

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data set fields
---------------
SubjectCode: The subject who performed the activity. The range is from 1 to 30.
Activity: The corresponding activity name for each of the subject.

Each of the fields below has variables in the data set to capture the mean & standard deviation. Please refer to the original code book at the source for definition of the variables. Below are the variables captured and the ones in brackets are the actual field names in the data set.

tBodyAcc-XYZ
[tBodyAcc.mean.X,tBodyAcc.mean.Y,tBodyAcc.mean.Z,tBodyAcc.std.X,tBodyAcc.std.Y,tBodyAcc.std.Z]
tGravityAcc-XYZ
[tGravityAcc.mean.X,tGravityAcc.mean.Y,tGravityAcc.mean.Z,tGravityAcc.std.X,tGravityAcc.std.Y,tGravityAcc.std.Z]
tBodyAccJerk-XYZ
[tBodyAccJerk.mean.X,tBodyAccJerk.mean.Y,tBodyAccJerk.mean.Z,tBodyAccJerk.std.X,tBodyAccJerk.std.Y,tBodyAccJerk.std.Z]
tBodyGyro-XYZ
[tBodyGyro.mean.X,tBodyGyro.mean.Y,tBodyGyro.mean.Z,tBodyGyro.std.X,tBodyGyro.std.Y,tBodyGyro.std.Z]
tBodyGyroJerk-XYZ
[tBodyGyroJerk.mean.X,tBodyGyroJerk.mean.Y,tBodyGyroJerk.mean.Z,tBodyGyroJerk.std.X,tBodyGyroJerk.std.Y,tBodyGyroJerk.std.Z]
tBodyAccMag
[tBodyAccMag.mean,tBodyAccMag.std]
tGravityAccMag
[tGravityAccMag.mean,tGravityAccMag.std]	
tBodyAccJerkMag
[tBodyAccJerkMag.mean,tBodyAccJerkMag.std]
tBodyGyroMag
[tBodyGyroMag.mean,tBodyGyroMag.std]
tBodyGyroJerkMag
[tBodyGyroJerkMag.mean,tBodyGyroJerkMag.std]
fBodyAcc-XYZ
[fBodyAcc.mean.X,fBodyAcc.mean.Y,fBodyAcc.mean.Z,fBodyAcc.std.X,fBodyAcc.std.Y,fBodyAcc.std.Z]
fBodyAccJerk-XYZ
[fBodyAccJerk.mean.X,fBodyAccJerk.mean.Y,fBodyAccJerk.mean.Z,fBodyAccJerk.std.X,fBodyAccJerk.std.Y,fBodyAccJerk.std.Z]
fBodyGyro-XYZ
[fBodyGyro.mean.X,fBodyGyro.mean.Y,fBodyGyro.mean.Z,fBodyGyro.std.X,fBodyGyro.std.Y,fBodyGyro.std.Z]
fBodyAccMag
[fBodyAccMag.mean,fBodyAccMag.std]
fBodyAccJerkMag
[fBodyBodyAccJerkMag.mean,fBodyBodyAccJerkMag.std]
fBodyGyroMag
[fBodyBodyGyroMag.mean,fBodyBodyGyroMag.std]
fBodyGyroJerkMag
[fBodyBodyGyroJerkMag.mean,fBodyBodyGyroJerkMag.std]

Data transformation details
---------------------------
1. Subject, X & Y files for training & test were loaded and merged into one dataset while excluding all the variables from X files other than mean & standard deviation variables.
2. Descriptive activity names were included in the combined data set for the activities.
3. Based on the combined data set, a new tidy data set was formed that showed the average of each of the mean & standard deviation variables for each activity & each subject.