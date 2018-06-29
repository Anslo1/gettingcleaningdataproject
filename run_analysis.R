#Create one R script called run_analysis.R that does the following:

#1 Merges the training and the test sets to create one data set.
#2 Extracts only the measurements on the mean and standard deviation for each measurement.
#3 Uses descriptive activity names to name the activities in the data set
#4 Appropriately labels the data set with descriptive variable names.
#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

############################################################
#0A Download and unzip
############################################################

# Download data
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR dataset.zip"

# Download data if it does not exist yet
if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile, mode = "wb")
}

# Unzip zip file
hardata <- "UCI HAR dataset"
if (!file.exists(hardata)) {
  unzip(zipFile)
}

############################################################
#0B Read files
############################################################

# Read training data
trainingsubjects <- read.table(file.path(hardata, "train", "subject_train.txt"))
trainingx <- read.table(file.path(hardata, "train", "X_train.txt"))
trainingy <- read.table(file.path(hardata, "train", "y_train.txt"))

# Read testing data
testingsubjects <- read.table(file.path(hardata, "test", "subject_test.txt"))
testingx <- read.table(file.path(hardata, "test", "X_test.txt"))
testingy <- read.table(file.path(hardata, "test", "y_test.txt"))



############################################################
#1 Merge the training and the test sets to create one data set
############################################################

# Create data frame for training and for testing data
training <- cbind(trainingsubjects, trainingy, trainingx)
testing <- cbind(testingsubjects, testingy, testingx)

# Combine training and testing data frames into one data frame
tot <- rbind(training, testing)

############################################################
#2 Extract only the measurements on the mean and standard deviation for each measurement
############################################################

# Read features (= y axis labels)
features <- read.table(file.path(hardata, "features.txt"), as.is = TRUE)

# Set column names: first two columns were added to the data frame, other columns are from "features.txt"
colnames(tot) <- c("subject", "activity", features[,2])

# Extract columns that contain "mean()" or "std()"
colselect <- grepl("subject|activity|mean()|std()", colnames(tot))
tot <- tot[, colselect]

############################################################
#3 Uses descriptive activity names to name the activities in the data set
############################################################

# Read activity labels
activitylabels <- read.table(file.path(hardata, "activity_labels.txt"), as.is = TRUE)

# Change activity numbers to labels
tot$activity <- factor(tot$activity, levels = activitylabels[,1], labels = activitylabels[,2])

############################################################
#4 Appropriately label the data set with descriptive variable names
############################################################

# Extract column names
cols <- colnames(tot)

# Clean column names
cols <- gsub("^t", "time", cols)
cols <- gsub("^f", "freq", cols)
cols <- gsub("-", ".", cols)
cols <- gsub("[()]", "", cols)
cols <- gsub("BodyBody", "Body", cols)

# Change data frame column names to new names
colnames(tot) <- cols

############################################################
#5 From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
############################################################

# Use dplyr package
library(dplyr)

# Make new data table, containing means of observations grouped by subject and activity
tidydata <- tot %>% group_by (subject, activity) %>%
  summarize_all(mean)

# Write file "tidy_data.txt"
write.table(tidydata, "tidy_data.txt", row.names=FALSE, quote = FALSE)
