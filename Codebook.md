## Codebook 

This codebook describes variables (including units) of the tidydata.txt 

There is an addtional file README.md that describes each step and summary choices made to create the tidy data set from the original study data.
The tidydata.txt file is produced by running run_analysis.R function.
The codebook references the original variables (data features) described in the features_info.txt of the original study data [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Study design

The original data referenced above contains the information how the data were collected.

### Required sources 

The codebook does not redundantly describes the original data, study design or steps and summary choices made to produce the tidy dataset.
You need all of the following sources:

*  original study data [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
*  README.md function describing each step and summary choices made to create the tidy data set
*  run_analysis.R file to createrun_analysis() function


### Description of the Variables in the tidy dataset

subjects                                              -   int       - range 1-30 identify a subject which peformed the activity  

activities                                            -   chr       - range "LAYING", "SITTING", "STANDING", "WALKING", "WALKING-DOWNSTAIRS", "WALKING-UPSTAIRS" identify which activity was performed by subject

timeBodyAccelerometer-mean()-X                        -   num       - the average of original tBodyAcc-mean()-X variable for each activity and each subject

timeBodyAccelerometer-mean()-Y                        -   num       - the average of original tBodyAcc-mean()-Y variable for each activity and each subject

timeBodyAccelerometer-mean()-Z                        -   num       - the average of original tBodyAcc-mean()-Z variable for each activity and each subject

timeBodyAccelerometer-std()-X                         -   num       - the average of original tBodyAcc-std()-X   variable for each activity and each subject

timeBodyAccelerometer-std()-Y                         -   num       - the average of original tBodyAcc-std()-Y  variable for each activity and each subject

timeBodyAccelerometer-std()-Z                         -   num       - the average of original tBodyAcc-std()-Z   variable for each activity and each subject

timeGravityAccelerometer-mean()-X                     -   num       - the average of original tGravityAcc-mean()-X variable for each activity and each subject

timeGravityAccelerometer-mean()-Y                     -   num       - the average of original tGravityAcc-mean()-Y variable for each activity and each subject

timeGravityAccelerometer-mean()-Z                     -   num      - the average of original tGravityAcc-mean()-Z variable for each activity and each subject

timeGravityAccelerometer-std()-X                      -   num      - the average of original tGravityAcc-std()-X variable for each activity and each subject

timeGravityAccelerometer-std()-Y                      -   num      - the average of original tGravityAcc-std()-Y variable for each activity and each subject

timeGravityAccelerometer-std()-Z                      -   num      - the average of original tGravityAcc-std()-Z variable for each activity and each subject

timeBodyAccelerometerJerk-mean()-X                    -   num      - the average of original tBodyAccJerk-mean()-X variable for each activity and each subject

timeBodyAccelerometerJerk-mean()-Y                    -   num      - the average of original tBodyAccJerk-mean()-Y variable for each activity and each subject

timeBodyAccelerometerJerk-mean()-Z                    -   num      - the average of original tBodyAccJerk-mean()-Z variable for each activity and each subject

timeBodyAccelerometerJerk-std()-X                     -   num      - the average of original tBodyAccJerk-std()-X variable for each activity and each subject

timeBodyAccelerometerJerk-std()-Y                     -   num      - the average of original tBodyAccJerk-std()-Y variable for each activity and each subject

timeBodyAccelerometerJerk-std()-Z                     -   num      - the average of original tBodyAccJerk-std()-Z variable for each activity and each subject

timeBodyGyroscope-mean()-X                            -   num      - the average of original tBodyGyro-mean()-X variable for each activity and each subject

timeBodyGyroscope-mean()-Y                            -   num      - the average of original tBodyGyro-mean()-Y variable for each activity and each subject

timeBodyGyroscope-mean()-Z                            -   num      - the average of original tBodyGyro-mean()-XZvariable for each activity and each subject

timeBodyGyroscope-std()-X                             -   num      - the average of original tBodyGyro-std()-X variable for each activity and each subject

timeBodyGyroscope-std()-Y                             -   num      - the average of original tBodyGyro-std()-Y variable for each activity and each subject

timeBodyGyroscope-std()-Z                             -   num      - the average of original tBodyGyro-std()-Z variable for each activity and each subject

timeBodyGyroscopeJerk-mean()-X                        -   num      - the average of original tBodyGyroJerk-mean()-X variable for each activity and each subject

timeBodyGyroscopeJerk-mean()-Y                        -   num      - the average of original tBodyGyroJerk-mean()-Y variable for each activity and each subject

timeBodyGyroscopeJerk-mean()-Z                        -   num      - the average of original tBodyGyroJerk-mean()-Z variable for each activity and each subject

timeBodyGyroscopeJerk-std()-X                         -   num      - the average of original tBodyGyroJerk-std()-X variable for each activity and each subject

timeBodyGyroscopeJerk-std()-Y                         -   num      - the average of original tBodyAccelerometer-mean()-Y variable for each activity and each subject

timeBodyGyroscopeJerk-std()-Z                         -   num      - the average of original tBodyGyroJerk-std()-Y variable for each activity and each subject

timeBodyAccelerometerMagnitude-mean()                 -   num      - the average of original tBodyAccMag-mean() variable for each activity and each subject

timeBodyAccelerometerMagnitude-std()                  -   num      - the average of original tBodyAccMag-std() variable for each activity and each subject

timeGravityAccelerometerMagnitude-mean()              -   num      - the average of original tGravityAccMag-mean()  variable for each activity and each subject

timeGravityAccelerometerMagnitude-std()               -   num      - the average of original tGravityAccMag-std() variable for each activity and each subject

timeBodyAccelerometerJerkMagnitude-mean()             -   num      - the average of original tBodyAccJerkMag-mean() variable for each activity and each subject

timeBodyAccelerometerJerkMagnitude-std()              -   num      - the average of original tBodyAccJerkMag-std() variable for each activity and each subject

timeBodyGyroscopeMagnitude-mean()                     -   num      - the average of original tBodyGyroMag-mean() variable for each activity and each subject

timeBodyGyroscopeMagnitude-std()                      -   num      - the average of original tBodyGyroMag-std() variable for each activity and each subject

timeBodyGyroscopeJerkMagnitude-mean()                 -   num      - the average of original tBodyGyroJerkMag-mean() variable for each activity and each subject

timeBodyGyroscopeJerkMagnitude-std()                  -   num      - the average of original tBodyGyroJerkMag-std() variable for each activity and each subject

frequencyBodyAccelerometer-mean()-X                   -   num      - the average of original fBodyAcc-mean()-X  variable for each activity and each subject

frequencyBodyAccelerometer-mean()-Y                   -   num      - the average of original fBodyAcc-mean()-Y variable for each activity and each subject

frequencyBodyAccelerometer-mean()-Z                   -   num      - the average of original fBodyAcc-mean()-Z variable for each activity and each subject

frequencyBodyAccelerometer-std()-X                    -   num      - the average of original fBodyAcc-std()-X  variable for each activity and each subject

frequencyBodyAccelerometer-std()-Y                    -   num      - the average of original fBodyAcc-std()-Y  variable for each activity and each subject

frequencyBodyAccelerometer-std()-Z                    -   num      - the average of original fBodyAcc-std()-Z  variable for each activity and each subject

frequencyBodyAccelerometerJerk-mean()-X               -   num      - the average of original fBodyAccJerk-mean()-X variable for each activity and each subject

frequencyBodyAccelerometerJerk-mean()-Y               -   num      - the average of original fBodyAccJerk-mean()-Y variable for each activity and each subject

frequencyBodyAccelerometerJerk-mean()-Z               -   num      - the average of original fBodyAccJerk-mean()-Z variable for each activity and each subject

frequencyBodyAccelerometerJerk-std()-X                -   num      - the average of original fBodyAccJerk-std()-X variable for each activity and each subject

frequencyBodyAccelerometerJerk-std()-Y                -   num      - the average of original fBodyAccJerk-std()-Y variable for each activity and each subject

frequencyBodyAccelerometerJerk-std()-Z                -   num      - the average of original fBodyAccJerk-std()-Z variable for each activity and each subject

frequencyBodyGyroscope-mean()-X                       -   num      - the average of original fBodyGyro-mean()-X variable for each activity and each subject

frequencyBodyGyroscope-mean()-Y                       -   num      - the average of original fBodyGyro-mean()-Y variable for each activity and each subject

frequencyBodyGyroscope-mean()-Z                       -   num      - the average of original fBodyGyro-mean()-Z variable for each activity and each subject

frequencyBodyGyroscope-std()-X                        -   num      - the average of original fBodyGyro-std()-X variable for each activity and each subject

frequencyBodyGyroscope-std()-Y                        -   num      - the average of original fBodyGyro-std()-Y variable for each activity and each subject

frequencyBodyGyroscope-std()-Z                        -   num      - the average of original fBodyGyro-std()-Z variable for each activity and each subject

frequencyBodyAccelerometerMagnitude-mean()            -   num      - the average of original fBodyBodyAccJerkMag-mean() variable for each activity and each subject

frequencyBodyAccelerometerMagnitude-std()             -   num      - the average of original fBodyAccMag-std() variable for each activity and each subject

frequencyBodyBodyAccelerometerJerkMagnitude-mean()     -  num      - the average of original fBodyBodyAccJerkMag-mean() variable for each activity and each subject

frequencyBodyBodyAccelerometerJerkMagnitude-std()     -   num      - the average of original fBodyBodyAccJerkMag-std() variable for each activity and each subject

frequencyBodyBodyGyroscopeMagnitude-mean()            -   num      - the average of original fBodyBodyGyroMag-mean() for each activity and each subject

frequencyBodyBodyGyroscopeMagnitude-std()             -   num      - the average of original fBodyBodyGyroMag-std() variable for each activity and each subject

frequencyBodyBodyGyroscopeJerkMagnitude-mean()        -   num      - the average of original fBodyBodyGyroJerkMag-mean() variable for each activity and each subject

frequencyBodyBodyGyroscopeJerkMagnitude-std()         -   num      - the average of original fBodyBodyGyroJerkMag-std() variable for each activity and each subject
