README
==================================================================================

This file provides an exact recipe how to create an tidy dataset (as an tidydata.txt) from the original  [study data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). It describes all steps and summary choices made during creation of the run_analysis() function as well as a description how to run the functions.

It works in conjunction with the following sources

Required sources
==================================================================================

You need all of the following sources:

*  original study data [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
*  README.md function describing each step and summary choices made to create the tidy data set
*  run_analysis.R file to createrun_analysis() function

Usage
==================================================================================

This section provides an example of the usage of the run_analysis.R functions.

###Prerequisites

The original  [study data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) should be manually downloaded and unzipped in a folder of your choice on your computer.
The code of the run_analysis.R should be copied in the same folder where the files were unzipped. 
The run_analysis()  function uses hard coded pathes to the source files, so it is important to make sure the function code resides in the same folder 
where original data were unzipped, so the function resides in the same folder as an original "activity_labels.txt", "features.txt" and "features_info.txt" are resides 
and in the parent folder of the test and train subfolder.

The outpt of the dir() command should be like following:

    "activity_labels.txt" "features.txt"        "features_info.txt"    "run_analysis.R"   "test" "train" 

###Usage example

   source("run_analysis.R")  

    run_analysis()  

    [1] "The tidy dataset were created in the current working directory with the name tidydata.txt"

Step by step instruction to implement the project requirements
==================================================================================

This describes all steps and summary choices made during creation of the run_analysis() function.

Requirements:
==================================================================================

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Implementation
==================================================================================

The original study data [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
were downloaded and unzipped. After unzipping the following folder/files werecreated (described in the README.txt file from the original study attached to the dataset):

The dataset includes the following files:
==================================================================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. 
   Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


Step 1. "Merges the training and the test sets to create one data set"
==================================================================================

In the first step the training and the test sets will be merged to create one data set.
Before merging data, the files were manually prechecked to ensure that the dimenstions of the files to be merged (number of rows / columns) match each other. 

    dim(read.table("features.txt"))

    [1] 561   2

    dim(read.table("./test/X_test.txt"))

    [1] 2947  561

    dim(read.table("./test/y_test.txt"))

    [1] 2947    1

    dim(read.table("./test/subject_test.txt"))

    [1] 2947    1


Repeat the same for the train set

    dim(read.table("./train/X_train.txt"))

    [1] 7352  561

    dim(read.table("./train/y_train.txt"))

    [1] 7352    1

    dim(read.table("./train/subject_train.txt"))

    [1] 7352    1

This shows that the data could be put together from the different files as following.

####Step 1.1 Give names to the variables in the X_test.txt and Y_test.txt.

Both files X_test.txt and Y_test.txt have 561 columns, features.txt file has 561 rows and 2 columns and the second column of the features.txt file provides
the variables names of the training and Test sets.

    dfeatures<-read.delim("features.txt", header=FALSE, sep="")

    dtrain<-read.delim("./train/X_train.txt", header=FALSE, sep="")  

    dtest<-read.delim("./test/X_test.txt", header=FALSE, sep="")

    colnames(dtrain)<-dfeatures$V2  

    colnames(dtest)<-dfeatures$V2

####Step 1.2 Verticaly merge the training and test sets with data for subject and activity (add two additional columns subject + activity) 


The files y_test.txt and subject_test.txt have the same number of rows as the test set and respectively hold label for activities and identify the subject
who perform the activity.

First, read the files into the dataframe and give the meaning names (starting with the test data):

    dsubj<-read.delim("./test/subject_test.txt", header=FALSE, sep="")  

    colnames(dsubj)<-"subjects"

    dlbs<-read.delim("./test/y_test.txt", header=FALSE, sep="")

    colnames(dlbs)<-"activities"

Then, use cbind to add a column for activity labels and subhects 

    dtest<-cbind(dlbs, dtest)  

    dtest<-cbind(dsubj, dtest)

Repeat the same for the training data:

    dsubj<-read.delim("./train/subject_train.txt", header=FALSE, sep="")  

    colnames(dsubj)<-"subjects"

    dlbs<-read.delim("./train/y_train.txt", header=FALSE, sep="")  

    colnames(dlbs)<-"activities"

Then, use cbind to add a column for activity labels and subhects 

    dtrain<-cbind(dlbs, dtrain)  

    dtrain<-cbind(dsubj, dtrain)


    dtrain<-read.delim("./train/X_train.txt", header=FALSE, sep="")

####Step 1.3 Use rbind to merge a training and a test sets

    dmerged<-rbind(dtrain, dtest)

Check the dimenstion of the resulting set - the set should have 563 columns (561+1+1) and 10299( 7352+2947) rows.


    dim(dmerged)
    [1] 10299   563

Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
==================================================================================

Use grep to create a subset of the names of dmerged dataset that have the word "mean()" and "std()" in them 
(use "\\(" in the matching pattern as "(" is a special character in R

    nms<-grep("mean\\(\\)|std\\(\\)", names(dmerged))

From the original dmerged dataset, extract only the two first columns (subject + activity) and columns selected the the previous step.

    dmerged <-dmerged[c(1,2, nms)]

Check the dimenstion of the set changed dmerged set. It should have unchanged number of rows(10299) and length(nms)+2 number of columns

    length(nms)

    [1] 66

    dim(dmerged)

    [1] 10299    68

Step 3. Uses descriptive activity names to name the activities in the data set
==================================================================================

Precheck the data in the activities column of the merged dataset:

    table(dmerged$`activities`)

       1    2    3    4    5    6 
    1722 1544 1406 1777 1906 1944 

Use the file activity_labels.txt to link the labels in the merged dataset (activities column) with their activity name.
First write a function act as following:

    act<-function(x) {
      if (x == 1)     x="WALKING"
      if (x == 2)     x="WALKING_UPSTAIRS"
      if (x == 3)     x="WALKING_DOWNSTAIRS"
      if (x == 4)     x="SITTING"
      if (x == 5)     x="STANDING"
      if (x == 6)     x="LAYING"
      return (x)
      }

Second, apply this function to all rows in the merged dataset:
 
    dmerged$`activities`<-sapply(dmerged$`activities`, act)

Postcheck the data in the activities column of the merged dataset (should be the same sums as in the precheck)

    table(dmerged$`activities`)

            LAYING            SITTING           STANDING            WALKING WALKING_DOWNSTAIRS   WALKING_UPSTAIRS 
              1944               1777               1906               1722               1406               1544 


Step 4 Appropriately labels the data set with descriptive variable names.
==================================================================================

The information to create descriptive variable names is taken from the original features_info.txt file.
So in this step the following actions will be done:

First, create a function to substitute each pattern in the input string with predefined replacement.
The function will proceed all the in the function body. So if the string have more than one match, for e.g. pattern = "tBodyAcc-mean()-X",
then t will be replaced with time in the first step and "Acc" will be replace with "Accelerometer" in the third step


    nms<-function(x) {
      x<-sub("^t", "time", x)
      x<-sub("^f", "frequency", x)
      x<-sub("Acc", "Accelerometer", x)
      x<-sub("Gyro", "Gyroscope", x)
      x<-sub("Mag", "Magnitude", x)
      return (x)
    }

Overwrite the names of dmerged data set with the new names returned by the nms function

    names(dmerged)<-nms(names(dmerged))

Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
==================================================================================

For each combination of the subject and activity comptute the mean and save in the dataframe.
Then use write.table to write the data to the tidydata.txt file in the current working directory

    dtidy<-aggregate(. ~subjects+activities, dmerged, mean)  

    write.table(dtidy, file = "tidydata.txt",row.name=FALSE)

Use View() command in the RStudio and text editor like Notepad++ on Windows to check the created data.

