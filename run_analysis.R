library(reshape2)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#Download and unzip the file

download.file(fileUrl,destfile = "getdata_dataset.zip")
unzip("getdata_dataset.zip")

#load the required data

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

#Extracting the required details

required_features <- grep(".*mean.*|.*std.*",features[,2])
required_features.names <- features[required_features,2]
required_features.names <- tolower(required_features.names)

#importing the Data

train <- read.table("UCI HAR Dataset/train/X_train.txt")[required_features]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[required_features]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

#Merging the DATA

complete_data <- rbind(train, test)
colnames(complete_data) <- c("subject", "activity", required_features.names)
tidy_data <- melt(complete_data,id=c("subject","activity"))
tidy_data <- dcast(tidy_data,subject + activity ~ variable,mean)

#saving the data

write.table(tidy_data,"tidy.txt")


