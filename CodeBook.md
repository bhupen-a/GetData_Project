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

In addition to the above, the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
'[mean/std] is used to indicate average mean and average standard deviation for each of the subject and activity.

tBodyAcc.[mean/std].XYZ
tGravityAcc.[mean/std].XYZ
tBodyAccJerk.[mean/std].XYZ
tBodyGyro.[mean/std].XYZ
tBodyGyroJerk.[mean/std].XYZ
tBodyAccMag.[mean/std]
tGravityAccMag.[mean/std]
tBodyAccJerkMag.[mean/std]
tBodyGyroMag.[mean/std]
tBodyGyroJerkMag.[mean/std]
fBodyAcc.[mean/std].XYZ
fBodyAccJerk.[mean/std].XYZ
fBodyGyro.[mean/std].XYZ
fBodyAccMag.[mean/std]
fBodyAccJerkMag.[mean/std]
fBodyGyroMag.[mean/std]
fBodyGyroJerkMag.[mean/std]


Data transformation details
---------------------------
1. Subject, X & Y files for training & test were loaded and merged into one dataset while excluding all the variables from X files other than mean & standard deviation variables.
2. Descriptive activity names were included in the combined data set for the activities.
3. Based on the combined data set, a new tidy data set was formed that showed the average of each of the mean & standard deviation variables for each activity & each subject.