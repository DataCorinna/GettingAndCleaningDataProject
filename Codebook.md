##CodeBook

###Original dataset

The original dataset (+ its description) used for the 'Getting an cleaning Data' course can be found on:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In the course project, a number of transformations where conducted on the original data, to create two new datasets that are based on the original data.

###Transformations

According to the instructions in th course project assignment:

* Merging the training and the test sets to create onedata set.
* Extracting only the measurements on the mean and standard deviation for each measurement.
* Using descriptive activity names to name the activities in the data set.
* Appropriately labeling the data set with descriptive activity names.
* Creating a second, independent tidy data set with the average of each variable for each activity and each subject. 

These transformations are coded in a R-script with the name 'run_analysis.R' that can be found in this repo. The script creates two .txt-files in the R-working-directory, that are named 'tidyData.txt' and 'averageData.txt'. This two .txt-files contain the datasets that were asked for in the course project assignment.

The script adds two columns with the names 'subject_ID' and "activity" that contain the name ID of the person who performed the activity and the coded activity. It also changes the activity codes (1 to 6) to the actual names of the activities. It also removes any parenthesis from the labels of the data set an replaces the '-' symbol with '_ in the labels.

###Data description:
The original dataset (see http-adress above) has 560 independent variables. By using the above-mentioned script 'run_analysis.R' the variables in the output-files are reduced to those variables that contain means and standard deviations of measurements. A list of the variables in the output files is shown below.

The descriptions for the variables can be found on the http-adress of the original data (see http-adress above).

tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyAccMag_mean
fBodyAccMag_std
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std


