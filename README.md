# Coursera: Getting and Cleaning Data - Course Project

This is my submission for the Course Project of the Getting and Cleaning Data course (by Johns Hopkins University) in Coursera. In this project, data collected from Samsung Galaxy S smartphone accelerometers was analyzed.

This repository contains the following files:

* `README.md` which explains the analysis
* `codebook.md`, the code book with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information
* `run_analysis.R`, the R script used for the analysis
* `tidy_data.txt`, which is the clean data set that resulted from the analysis

The `run_analysis.R` script does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

