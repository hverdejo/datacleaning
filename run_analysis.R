library(dplyr)
if(!file.exists("data")){dir.create("data")}

## Load the training data, including subject_id(subject_train.txt) and activity_id(y_train.txt)
subject_id<-read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "id")
activity_id<-read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity")
train_data<-read.table("UCI HAR Dataset/train/X_train.txt")


## We add subject_id and activity_id data to the train_data dataset
train_data<-cbind (train_data, id = subject_id)
train_data<-cbind (train_data, activity = activity_id)

##Load the test data
subject_id<-read.table("UCI HAR Dataset/test/subject_test.txt", col.names ="id")
activity_id<-read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity")
test_data<-read.table("UCI HAR Dataset/test/X_test.txt")

## We add subject_id and activity_id data to the train_data dataset
test_data<-cbind (test_data, "id"=subject_id)
test_data<-cbind (test_data, "activity"=activity_id)

## We merge both datasets 

mergedData<-rbind(train_data, test_data)

## Change the names of features to human_readable 
feat_names<-read.table("UCI HAR Dataset/features.txt")
colnames(mergedData)<-c(as.character(feat_names$V2),"id","activity")


## We eliminate duplicate variables from the merged data
mergedData<-mergedData[!duplicated(names(mergedData))]

##And select only columns with mean or standard deviation data
tidyData<-select(mergedData, contains("mean", ignore.case=FALSE), contains("std",ignore.case=FALSE), contains("id"), contains("activity"))


## Change the names of activity to human-readable using the info on UCI HAR Dataset/activity_labels.txt
tidyData$activity[tidyData$activity==1]<-"WALKING"
tidyData$activity[tidyData$activity==2]<-"WALKING_UPSTAIRS"
tidyData$activity[tidyData$activity==3]<-"WALKING_DOWNSTAIRS"
tidyData$activity[tidyData$activity==4]<-"SITTING"
tidyData$activity[tidyData$activity==5]<-"STANDING"
tidyData$activity[tidyData$activity==6]<-"LAYING"

## Produce a tidy dataframe with the average for each activity, for each individual
library(reshape2)

## First, we melt the data separating id variables (id and activity) 
## from measurement variables
tidymelt<-melt(tidyData, id=c("id","activity"))

## Then, we recast the data supplying the mean of each measurement variable 
##for any given id and activity
tidycast<-dcast(tidymelt, id+activity~variable,mean)

## Finally, we rename the variables to make them more "human readable"

colnames(tidycast)<-c("id","activity","tBodyAcceleration_meanX","tBodyAcceleration_meanY","tBodyAcceleration_meanZ",
            "tGravityAcceleration_meanX","tGravityAcceleration_meanY","tGravityAcceleration_meanZ",
            "tBodyAccelerationJerk_meanX","tBodyAccelerationJerk_meanY","tBodyAccelerationJerk_meanZ",
            "tBodyAngularVelocity_meanX","tBodyAngularVelocity_meanY","tBodyAngularVelocity_meanZ",
            "tBodyAngularVelocityJerk_meanX","tBodyAngularVelocityJerk_meanY","tBodyAngularVelocityJerk_meanZ",
            "tBodyAccelerationMagnitude_mean","tGravityAccelerationMagnitude_mean",
            "tBodyAccelerationJerkMagnitude_mean","tBodyAngularVelocityMagnitude_mean",
            "tBodyAngularVelocityJerkMagnitude_mean","fBodyAcceleration_meanX",
            "fBodyAcceleration_meanY","fBodyAcceleration_meanZ",
            "fBodyAcceleration_meanFrequencyX","fBodyAcceleration_meanFrequencyY","fBodyAcceleration_meanFrequencyZ",
            "fBodyAccelerationJerk_meanX","fBodyAccelerationJerk_meanY","fBodyAccelerationJerk_meanZ",
            "fBodyAccelerationJerk_meanFrequencyX","fBodyAccelerationJerk_meanFrequencyY","fBodyAccelerationJerk_meanFrequencyZ",
            "fBodyAngularVelocity_meanX","fBodyAngularVelocity_meanY","fBodyAngularVelocity_meanZ",
            "fBodyAngularVelocity_meanFrequencyX","fBodyAngularVelocity_meanFrequencyY","fBodyAngularVelocity_meanFrequencyZ",
            "fBodyAccelerationMagnitude_mean","fBodyAccelerationMagnitude_meanFrequency",
            "fBodyBodyAccelerationJerkMagnitude_mean","fBodyBodyAccelerationJerkMagnitude_meanFrequency",
            "fBodyBodyAngularVelocity_mean","fBodyBodyAngularVelocity_meanFrequency",
            "fBodyBodyAngularVelocityJerk_mean","fBodyBodyAngularVelocityJerk_meanFrequency",
            "tBodyAcceleration_stdX","tBodyAcceleration_stdY","tBodyAcceleration_stdZ",
            "tGravityAcceleration_stdX","tGravityAcceleration_stdY","tGravityAcceleration_stdZ",
            "tBodyAccelerationJerk_stdX","tBodyAccelerationJerk_stdY","tBodyAccelerationJerk_stdZ",
            "tBodyAngularVelocity_stdX","tBodyAngularVelocity_stdY","tBodyAngularVelocity_stdZ",
            "tBodyAngularVelocityJerk_stdX","tBodyAngularVelocityJerk_stdY","tBodyAngularVelocityJerk_stdZ",
            "tBodyAccelerationMagnitude_std","tGravityAccelerationMagnitude_std",
            "tBodyAccelerationJerkMagnitude_std","tBodyAngularVelocityMagnitude_std",
            "tBodyAngularVelocityJerkMagnitude_std",
            "fBodyAcceleration_stdX", "fBodyAcceleration_stdY", "fBodyAcceleration_stdZ",
            "fBodyAccelerationJerk_stdX", "fBodyAccelerationJerk_stdY","fBodyAccelerationJerk_stdZ",
            "fBodyAngularVelocity_stdX", "fBodyAngularVelocity_stdY","fBodyAngularVelocity_stdZ",
            "fBodyAccelerationMagnitude_std","fBodyBodyAccelerationJerkMagnitude_std","fBodyBodyAngularVelocityMagnitude_std",
            "fBodyBodyAngularVelocityJerkMagnitude_std")

write.table(tidycast, "data/tidy.txt", col.names=TRUE, row.names=FALSE)

