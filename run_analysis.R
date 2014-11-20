unzip("getdata-projectfiles-UCI HAR Dataset.zip")

# file paths
featurespath <- "UCI HAR Dataset/features.txt"
actlablespath <- "UCI HAR Dataset/activity_labels.txt"
xtestpath <- "UCI HAR Dataset/test/X_test.txt"
ytestpath <- "UCI HAR Dataset/test/y_test.txt"
subjecttestpath <- "UCI HAR Dataset/test/subject_test.txt"
xtrainpath <- "UCI HAR Dataset/train/X_train.txt"
ytrainpath <- "UCI HAR Dataset/train/y_train.txt"
subjecttrainpath <- "UCI HAR Dataset/train/subject_train.txt"

# read features and activity labels
features <- read.table(featurespath)[, 2]
actlabels <- read.table(actlablespath)

# function to read test / training data to a data frame
constructTable <- function(xpath, ypath, subjectpath)
{
    # read x and use the features as the column names    
    x <- read.table(xpath)    
    colnames(x) <- features    
    
    # read y, encode it as a factor (using actlabels), and add it to x as column
    # Activity
    y <- read.table(ypath)[, 1]
    y <- factor(y, levels=actlabels[, 1], labels=actlabels[, 2])
    x$Activity <- y  
    
    # read subjects and add them to x as column Subject 
    subjects <- read.table(subjectpath)[, 1]
    x$Subject <- subjects
    
    x
}

# create the test & training data frames and merge them to create one data set
test <- constructTable(xtestpath, ytestpath, subjecttestpath)
train <- constructTable(xtrainpath, ytrainpath, subjecttrainpath)
alldata <- rbind(test, train)

# extract only the measurements on the mean and standard deviation for each 
# measurement     
colfilter <- grepl("-mean\\(\\)|-std\\(\\)", features, TRUE)
filtereddata <- alldata[, colfilter]

# create a tidy data set with the average of each variable for each activity 
# and each subject
tidydata = aggregate(filtereddata[,!colnames(filtereddata) %in% c("Activity", "Subject")], by=list(Activity = filtereddata$Activity, Subject=filtereddata$Subject), FUN=mean)

# write the tidy data to a txt file with write.table() using row.name=FALSE
write.table(tidydata, file="tidydata.txt", row.name=FALSE)
