# 1. Merge the training and the test sets to create one data set.

#1.a.  Read in the training data 

  # set working directory
    setwd('/Users/Rachel/Desktop/Coursera/UCI HAR Dataset/');

  # Read in the data from files
    features     = read.table('./features.txt',header=FALSE); 
    activityType = read.table('./activity_labels.txt',header=FALSE); 
    subjectTrain = read.table('./train/subject_train.txt',header=FALSE);
    xTrain       = read.table('./train/x_train.txt',header=FALSE);
    yTrain       = read.table('./train/y_train.txt',header=FALSE);

  # Assigin column names to the training data
    colnames(activityType)  = c('actid','acttype');
    colnames(subjectTrain)  = "subid";
    colnames(xTrain)        = features[,2]; 
    colnames(yTrain)        = "actid";

  # Create the final training set by merging yTrain, subjectTrain, and xTrain
    trainingdata = cbind(yTrain,subjectTrain,xTrain);
    
#1.b.  Read in the test data 
    subjectTest = read.table('./test/subject_test.txt',header=FALSE);
    xTest       = read.table('./test/x_test.txt',header=FALSE);
    yTest       = read.table('./test/y_test.txt',header=FALSE);
    
  # Assign column names to the test data
    colnames(subjectTest) = "subid";
    colnames(xTest)       = features[,2]; 
    colnames(yTest)       = "actid";
    
  # Create the final test set by merging the xTest, yTest and subjectTest data
    testdata = cbind(yTest,subjectTest,xTest);
    
    
  # Combine training and test data to create a final data set
    finaldata1 = rbind(trainingdata,testdata);
    
#2. Extract mean and standard deviation measurements
    names = colnames(finaldata1);
    desireddata = (grepl("act..",names) | grepl("sub..",names) | grepl("-mean..",names) & !grepl("-meanFreq..",names) & !grepl("mean..-",names) | grepl("-std..",names) & !grepl("-std()..-",names));
    finaldata = finaldata1[desireddata==TRUE];
    
#3. Use descriptive activity names to name the activities in the data set
    finaldata2 = merge(finaldata,activityType,by='actid',all.x=TRUE);
    colNames  = colnames(finaldata2); 
    
#4. Appropriately label the data set with descriptive variable names
    names(finaldata2) = gsub("std()", "standard deviation", names(finaldata2))
    names(finaldata2) = gsub("mean()", "mean", names(finaldata2))
    names(finaldata2) = gsub("^t", "time", names(finaldata2))
    names(finaldata2) = gsub("^f", "frequency", names(finaldata2))
    names(finaldata2) = gsub("Acc", "Accelerometer", names(finaldata2))
    names(finaldata2) = gsub("Gyro", "gyroscope", names(finaldata2))
    names(finaldata2) = gsub("Mag", "magnitude", names(finaldata2))
    names(finaldata2) = gsub("BodyBody", "body", names(finaldata2))
    names(finaldata2) = gsub("\\()","",names(finaldata2))
    # Names after
    head(str(finaldata2),6)
    
#5. Create a second, independent tidy data set with the average of each variable for each activity and each subject 
  
  # Subset to remove standard deviation columns
    names2 = colnames(finaldata2);
    nostdev = (grepl("standard",names2))
    tidydata = finaldata2[nostdev==FALSE];
   
  # Export the tidyData set 
    write.table(tidydata, './tidyData.txt',row.name=FALSE,sep='\t');
