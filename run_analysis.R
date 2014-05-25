
## Preparation: The data.table package has to be loaded into the library: 
  library(data.table)

## The following code reads in the activity_labels and features:
  activity_labels <- read.table("activity_labels.txt", sep = " ", stringsAsFactors = FALSE)
  features <- read.table("features.txt", header = FALSE, sep = " ", stringsAsFactors = FALSE)

## The next step is merging the training and the test sets to create one data set:
  subject_train <- read.table("./train/subject_train.txt", colClasses = "integer") # subject_ID
  x_train <- read.table("./train/X_train.txt") # features table
  y_train <- read.table("./train/y_train.txt") # activity code
  data_train <- cbind.data.frame(subject_train, y_train, x_train)

  subject_test <- read.table("./test/subject_test.txt", colClasses = "integer") # subject_ID
  x_test <- read.table("./test/X_test.txt") # features table
  y_test <- read.table("./test/y_test.txt") # activity code
  data_test <- cbind.data.frame(subject_test, y_test, x_test)

  activity_data <- rbind(data_test, data_train)
  names(activity_data) <- c("subject_ID", "activity", features$V2)

## The next step is extracting only the measurements on the mean and standard deviation for each measurement:
  meanAndStd <- grep("mean\\(|std\\(", features$V2)
  summaryData <- activity_data[,c(1,2,meanAndStd+2)]

## The next step is naming the activities in the data set with descriptive names:
  summaryData$subject_ID <- factor(summaryData$subject_ID, levels=1:30)
  summaryData$activity <- factor(summaryData$activity, levels=activity_labels$V1, labels=activity_labels$V2)

# The next step is labeling the data with appropriate descriptive names and writing it to a file "tidydata.txt":
  names(summaryData) <- gsub("[//(|//)]", "", names(summaryData))
  names(summaryData) <- gsub("-", "_", names(summaryData))
  write.table(summaryData, "tidyData.txt", sep="\t")

# The final step is creating a second, independent tidy data set with the average of each variable
# for each activity and each subject:
  dt<- data.table(summaryData)
  avgData<- dt[, lapply(.SD, mean), by=c("subject_ID", "activity")]
  avgData<- avgData[order(avgData$subject_ID, avgData$activity),]
  write.table(avgData, "averageData.txt", sep="\t")