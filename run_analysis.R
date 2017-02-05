run_analysis <-function () {
  #This function automatically proceeds steps 1-5 described in the course project under
  #https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project
  #the function text itself includes only the absolute minimum on the comments like marking the different steps
  #the exact descriptions of the steps are included in the README.md file for this project
  #
  # Step 1. "Merges the training and the test sets to create one data set"
  #Step 1.1 Give names to the variables in the X_test.txt and Y_test.txt.
  
  dfeatures<-read.delim("features.txt", header=FALSE, sep="")
  dtrain<-read.delim("./train/X_train.txt", header=FALSE, sep="")
  dtest<-read.delim("./test/X_test.txt", header=FALSE, sep="")
  
  colnames(dtrain)<-dfeatures$V2
  colnames(dtest)<-dfeatures$V2
  
  #Step 1.2 Verticaly merge the training and test sets with data for subject and activity 
  #(add two additional columns subject + activity)
  
  dsubj<-read.delim("./test/subject_test.txt", header=FALSE, sep="")
  colnames(dsubj)<-"subjects"
  
  dlbs<-read.delim("./test/y_test.txt", header=FALSE, sep="")
  colnames(dlbs)<-"activities"
  
  dtest<-cbind(dlbs, dtest)
  dtest<-cbind(dsubj, dtest)
  
  dsubj<-read.delim("./train/subject_train.txt", header=FALSE, sep="")
  colnames(dsubj)<-"subjects"
  
  dlbs<-read.delim("./train/y_train.txt", header=FALSE, sep="")
  colnames(dlbs)<-"activities"
  
  dtrain<-cbind(dlbs, dtrain)
  dtrain<-cbind(dsubj, dtrain)
  
  #Step 1.3 Use rbind to merge a training and a test sets
  dmerged<-rbind(dtrain, dtest)
  
  #Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  
  
  nms<-grep("mean\\(\\)|std\\(\\)", names(dmerged))
  dmerged <-dmerged[c(1,2, nms)]
  
  #Step3. Uses descriptive activity names to name the activities in the data set
  act<-function(x) {
    if (x == 1)     x="WALKING"
    if (x == 2)     x="WALKING_UPSTAIRS"
    if (x == 3)     x="WALKING_DOWNSTAIRS"
    if (x == 4)     x="SITTING"
    if (x == 5)     x="STANDING"
    if (x == 6)     x="LAYING"
    return (x)
  }
  
  dmerged$`activities`<-sapply(dmerged$`activities`, act)
  
  #Step 4.
    nms<-function(x) {
      x<-sub("^t", "time", x)
      x<-sub("^f", "frequency", x)
      x<-sub("Acc", "Accelerometer", x)
      x<-sub("Gyro", "Gyroscope", x)
      x<-sub("Mag", "Magnitude", x)
      return (x)
    }
    
    names(dmerged)<-nms(names(dmerged))
    names(dmerged)
  
  #Step 5
    dtidy<-aggregate(. ~subjects+activities, dmerged, mean)
    write.table(dtidy, file = "tidydata.txt",row.name=FALSE)
    print("The tidy dataset were created in the current working directory with the name tidydata.txt")
  }

