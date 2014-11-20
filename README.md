#Getting and Cleaning Data -- Course Project

This is the project of the Coursera course [Getting and Cleaning Data]. 
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.


###Files included in the repository
- 'README.md'
- 'LICENSE'
- 'run_anaylysis.R': A script to read the *Human Activity Recognition Using Smartphones Dataset* [1] and merge/extract/label/output a tidy data set required by the course.
- 'tidydata.txt': The output of the run_anaylysis.R.
- 'tidydata_info.md': The code book of tidydata.txt


###run_anaylysis.R:
- The getdata-projectfiles-UCI HAR Dataset.zip is unzipped to the Workspace folder.
- The relative paths to the required files are defined.
- The features and the activity labels are read from features.txt and activity_labels.txt
- A function called constructTable is defined to read / combine / label the feature data, the activities, and the subjects.
- The test data and the training data are collected using function constructTable separately and then combined.
- The measurements on the mean and the standard deviation for each measurement are extracted. 
- A tidy data set, i.e. tidydata, with the average of each variable for each activity and each subject are created. 
- The tidy data set is written to a text file with write.table() using row.name=FALSE


###Reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


License
--------
MIT



[Getting and Cleaning Data]: https://class.coursera.org/getdata-009
