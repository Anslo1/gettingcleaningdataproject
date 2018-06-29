# Code Book

This is the code book for the dataset `tidy_data.txt`
More information about this project and data set is in the `README.md` file.

## Identifiers
* `subject` - test subject ID, ranging from 1 to 30
* `activity` - activity that the subject performed. 
This identifier has 6 options:
  * `WALKING` - subject was walking
  * `WALKING_UPSTAIRS` - subject was walking upstairs
  * `WALKING_DOWNSTAIRS` - subject was walking downstairs
  * `SITTING` - subject was sitting
  * `STANDING` - subject was standing
  * `LAYING` - subject was laying
  
## Measurements
The following measurements were included in the data set:

* `timeBodyAcc.mean.XYZ`
* `timeBodyAcc.std.XYZ` 
* `timeGravityAcc.mean.XYZ`
* `timeGravityAcc.std.XYZ` 
* `timeBodyAccJerk.mean.XYZ` 
* `timeBodyAccJerk.std.XYZ` 
* `timeBodyGyro.mean.XYZ` 
* `timeBodyGyro.std.XYZ` 
* `timeBodyGyroJerk.mean.XYZ` 
* `timeBodyGyroJerk.std.XYZ` 
* `timeBodyAccMag.mean` 
* `timeBodyAccMag.std` 
* `timeGravityAccMag.mean` 
* `timeGravityAccMag.std`
* `timeBodyAccJerkMag.mean` 
* `timeBodyAccJerkMag.std` 
* `timeBodyGyroMag.mean` 
* `timeBodyGyroMag.std` 
* `timeBodyGyroJerkMag.mean` 
* `timeBodyGyroJerkMag.std` 
* `freqBodyAcc.mean.XYZ` 
* `freqBodyAcc.std.XYZ` 
* `freqBodyAcc.meanFreq.XYZ` 
* `freqBodyAccJerk.mean.XYZ` 
* `freqBodyAccJerk.std.XYZ` 
* `freqBodyAccJerk.meanFreq.XYZ` 
* `freqBodyGyro.mean.XYZ` 
* `freqBodyGyro.std.XYZ` 
* `freqBodyGyro.meanFreq.XYZ`
* `freqBodyAccMag.mean` 
* `freqBodyAccMag.std` 
* `freqBodyAccMag.meanFreq` 
* `freqBodyAccJerkMag.mean` 
* `freqBodyAccJerkMag.std` 
* `freqBodyAccJerkMag.meanFreq` 
* `freqBodyGyroMag.mean` 
* `freqBodyGyroMag.std` 
* `freqBodyGyroMag.meanFreq` 
* `freqBodyGyroJerkMag.mean` 
* `freqBodyGyroJerkMag.std` 
* `freqBodyGyroJerkMag.meanFreq`

Variables in `time` are indicated with 'time' at the beginning of the measurement name.  
Variables in `frequence` are indicated with 'freq' at the beginning of the measurement name.  
`.XYZ` indicates that the variable is measured in three different dimensions (X, Y, and Z).  
`mean` and `std` indicate whether the measurement is a mean or a standard deviation.  

``````````
