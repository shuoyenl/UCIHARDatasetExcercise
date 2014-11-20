#Codebook of the tidydata
This is the codebook of the tidydata.

###Source Data
The tidy data set is derived from [Human Activity Recognition Using Smartphones Dataset Version 1.0]. See **UCI HAR Dataset/features_info.txt** in the source data for more details about how the data are collected and prepared.


###tidydata
The training and the test sets are merged and labeled according to the information provided by the source data before being further processed.
Each row in the tidy data set is corresponding to the average of each variable (or feature) for each activity and each subject in the source data. 
The columns include only the measurements on the mean, i.e. *mean()*, and the standard deviation, i.e. *std()*, for each measurement in the source data:
* Activity
* Subject
* mean() and std() of the following
 * tBodyAcc-XYZ
 * tGravityAcc-XYZ
 * tBodyAccJerk-XYZ
 * tBodyGyro-XYZ
 * tBodyGyroJerk-XYZ
 * tBodyAccMag
 * tGravityAccMag
 * tBodyAccJerkMag
 * tBodyGyroMag
 * tBodyGyroJerkMag
 * fBodyAcc-XYZ
 * fBodyAccJerk-XYZ
 * fBodyGyro-XYZ
 * fBodyAccMag
 * fBodyAccJerkMag
 * fBodyGyroMag
 * fBodyGyroJerkMag



[Human Activity Recognition Using Smartphones Dataset Version 1.0]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

