# Getting and Cleaning Data

Project for Getting and Cleaning Data course

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The packages "dplyr" and "reshape2" are needed for the code to run. The code asumes that you have downloaded the UCI HAR Dataset folder to your working directory

1. First, it creates a folder ("data") where the resulting files will be writen 
<pre><code>library(dplyr)
if(!file.exists("data")){dir.create("data")}</code></pre>

2. Secondly, it loads the training data, including subject_id(subject_train.txt) and activity_id(y_train.txt)
<pre><code>subject_id<-read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "id")
activity_id<-read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity")
train_data<-read.table("UCI HAR Dataset/train/X_train.txt")</code></pre>

3. Then, we add subject_id and activity_id data to the train_data dataset
<pre><code>train_data<-cbind (train_data, id = subject_id)
train_data<-cbind (train_data, activity = activity_id)</code></pre>

4. The same steps are repeated for test data. First, the dataset is loaded 
<pre><code>subject_id<-read.table("UCI HAR Dataset/test/subject_test.txt", col.names ="id")
activity_id<-read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity")
test_data<-read.table("UCI HAR Dataset/test/X_test.txt")</code></pre>

5. And then we add subject_id and activity_id data to the train_data dataset
<pre><code>test_data<-cbind (test_data, "id"=subject_id)
test_data<-cbind (test_data, "activity"=activity_id)</code></pre>

6. We merge both datasets 
<pre><code>mergedData<-rbind(train_data, test_data)</code></pre>

7. And then we load the name of the features from the features.txt file
<pre><code>feat_names<-read.table("UCI HAR Dataset/features.txt")
colnames(mergedData)<-c(as.character(feat_names$V2),"id","activity")</code></pre>

8. We eliminate duplicate variables from the merged data
<pre><code>mergedData<-mergedData[!duplicated(names(mergedData))]</code></pre>

9. And select only columns with mean or standard deviation data
<pre><code>tidyData<-select(mergedData, contains("mean", ignore.case=FALSE), contains("std",ignore.case=FALSE), contains("id"), contains("activity"))</code></pre>

10. Change the names of activity to human-readable using the info on UCI HAR Dataset/activity_labels.txt
<pre><code>tidyData$activity[tidyData$activity==1]<-"WALKING"
tidyData$activity[tidyData$activity==2]<-"WALKING_UPSTAIRS"
tidyData$activity[tidyData$activity==3]<-"WALKING_DOWNSTAIRS"
tidyData$activity[tidyData$activity==4]<-"SITTING"
tidyData$activity[tidyData$activity==5]<-"STANDING"
tidyData$activity[tidyData$activity==6]<-"LAYING"</code></pre>

11. To produce a tidy dataframe with the mean of each feature for each activity, for each individual, we will use the reshape2 package
<pre><code>library(reshape2)</code></pre>

12. First, we melt the data separating id variables (id and activity) from measurement variables
<pre><code>tidymelt<-melt(tidyData, id=c("id","activity"))</code></pre>

13. Then, we recast the data supplying the mean of each measurement variable for any given id and activity
<pre><code>tidycast<-dcast(tidymelt, id+activity~variable,mean)</code></pre>

14. Finally, we rename the feature variables to make them more "human readable"
<pre><code>colnames(tidycast)<-c("id","activity","tBodyAcceleration_meanX","tBodyAcceleration_meanY","tBodyAcceleration_meanZ",
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
            "fBodyBodyAngularVelocityJerkMagnitude_std")</code></pre>

15. We write the tidy data to the "data" directory
<pre><code>write.table(tidycast, "data/tidy.txt", col.names=TRUE, row.names=FALSE)</code></pre>




