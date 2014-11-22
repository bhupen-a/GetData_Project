## File storing all the helper functions


## Function to download the zip file and unzip if it does not exist
getFiles <- function() {
        ## Set the file names & URL file path
        zipFile <- "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        zipFolder <- "UCI HAR Dataset"
        
        ## Download the file if it does not not exist
        if(!file.exists(zipFile)){
                download.file(fileURL, destfile = zipFile, mode = "wb")
        }
        
        ## Unzip the file if the zip folder does not exist
        if(!file.exists(zipFolder)){
                unzip(zipFile)
        }
}


## Function to download the zip file and unzip if it does not exist
getData <- function(src, x_colnames, x_cols, activityLabels) {
        zipFolder <- "UCI HAR Dataset/"
        
        subjectFile <- paste(zipFolder, src, "/subject_", src, ".txt", sep = "")
        Y_File <- paste(zipFolder, src, "/y_", src, ".txt", sep = "")
        X_File <- paste(zipFolder, src, "/x_", src, ".txt", sep = "")
        
        ## Read data from subject, X & Y files
        dt_subject <- read.table(file = subjectFile, col.names = c("SubjectCode"))
        dt_Y <- read.table(file = Y_File, col.names = c("ActivityCode"))
        dt_X <- read.table(file = X_File, col.names = x_colnames)

        ## Combine Y file with activity names
        dt_Y <- join(x = dt_Y, y = activityLabels, by = "ActivityCode", type = "left")
 
        ## Combine all three files and choose only Mean & standard deviation fields from X file
        data <- cbind(dt_subject, dt_Y, dt_X[,x_cols])
        
        ## Return data table
        data
} 