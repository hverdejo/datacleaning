#CodeBook

##Name of the dataset:
tidycast

##Description:
The original dataset includes the results from experiments carried out with a group of 30 volunteers 
within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, the authors captured 3-axial linear acceleration 
and 3-axial angular velocity at a constant rate of 50Hz. 
The original dataset has been cleaned and ordered. A tidy dataset is provided with the average of each variable 
for each activity and each subject.  

##Format:
  A data frame with 180 observations on the following 81 variables
  
##Variables:

###id
a numeric vector. The id for each participant
###activity
a character vector. A human-readable name for the activities performed
### tBodyAcceleration_meanX
a numeric vector. Mean body acceleration on the x axis in the time-domain. Units=g
###tBodyAcceleration_meanY
a numeric vector. Mean body acceleration on the y axis in the time-domain. Units=g
###tBodyAcceleration_meanZ
a numeric vector. Mean body acceleration on the z axis in the time-domain. Units=g
###tGravityAcceleration_meanX
a numeric vector. Mean gravity acceleration on the x axis in the time-domain. Units=g
###tGravityAcceleration_meanY
a numeric vector. Mean gravity acceleration on the y axis in the time-domain. Units=g
###tGravityAcceleration_meanZ
a numeric vector. Mean gravity acceleration on the z axis in the time-domain. Units=g
###tBodyAccelerationJerk_meanX
a numeric vector. Mean body acceleration jerk on the x axis in the time-domain. Units=g
###tBodyAccelerationJerk_meanY
a numeric vector. Mean body acceleration jerk on the y axis in the time-domain. Units=g
###tBodyAccelerationJerk_meanZ
a numeric vector. Mean body acceleration jerk on the z axis in the time-domain. Units=g
###tBodyAngularVelocity_meanX
a numeric vector. Mean body angular velocity on the x axis in the time-domain. Units=radians/second
###tBodyAngularVelocity_meanY
a numeric vector. Mean body angular velocity on the y axis in the time-domain. Units=radians/second
###tBodyAngularVelocity_meanZ
a numeric vector. Mean body angular velocity on the z axis in the time-domain. Units=radians/second
###tBodyAngularVelocityJerk_meanX
a numeric vector. Mean body angular velocity jerk on the x axis in the time-domain. Units=radians/second
###tBodyAngularVelocityJerk_meanY
a numeric vector. Mean body angular velocity jerk on the y axis in the time-domain. Units=radians/second
###tBodyAngularVelocityJerk_meanZ
a numeric vector. Mean body angular velocity jerk on the z axis in the time-domain. Units=radians/second
###tBodyAccelerationMagnitude_mean
a numeric vector. Mean Euclidean magnitude of the body acceleration in the time-domain. Units=g
###tGravityAccelerationMagnitude_mean
a numeric vector. Mean Euclidean magnitude of the gravity acceleration in the time-domain. Units=g
###tBodyAccelerationJerkMagnitude_mean
a numeric vector. Mean Euclidean magnitude of the body acceleration jerk in the time-domain. Units=g
###tBodyAngularVelocityMagnitude_mean
a numeric vector. Mean Euclidean magnitude of the body angular velocity in the time-domain. Units=radians/second
###tBodyAngularVelocityJerkMagnitude_mean
a numeric vector. Mean Euclidean magnitude of the body angular velocity jerk in the time-domain. Units=radians/second
###fBodyAcceleration_meanX
a numeric vector. Mean body acceleration on the x axis in the frequency-domain. Units=g
###fBodyAcceleration_meanY
a numeric vector. Mean body acceleration on the y axis in the frequency-domain. Units=g
###fBodyAcceleration_meanZ
a numeric vector. Mean body acceleration on the z axis in the frequency-domain. Units=g
###fBodyAcceleration_meanFrequencyX
a numeric vector. Mean frequency of body acceleration on the x axis in the frequency-domain. Units=g
###fBodyAcceleration_meanFrequencyY
a numeric vector. Mean frequency of body acceleration on the y axis in the frequency-domain. Units=g
###fBodyAcceleration_meanFrequencyZ
a numeric vector. Mean frequency of body acceleration on the z axis in the frequency-domain. Units=g
###fBodyAccelerationJerk_meanX
a numeric vector. Mean body acceleration jerk on the x axis in the frequency-domain. Units=g
###fBodyAccelerationJerk_meanY
a numeric vector. Mean body acceleration jerk on the y axis in the frequency-domain. Units=g
###fBodyAccelerationJerk_meanZ
a numeric vector. Mean body acceleration jerk on the z axis in the frequency-domain. Units=g
###fBodyAccelerationJerk_meanFrequencyX
a numeric vector. Mean frequency of body acceleration jerk on the x axis in the frequency-domain. Units=g
###fBodyAccelerationJerk_meanFrequencyY
a numeric vector. Mean frequency of body acceleration jerk on the y axis in the frequency-domain. Units=g
###fBodyAccelerationJerk_meanFrequencyZ
a numeric vector. Mean frequency of body acceleration jerk on the z axis in the frequency-domain. Units=g
###fBodyAngularVelocity_meanX
a numeric vector. Mean body angular velocity on the x axis in the frequency-domain. Units=radians/second
###fBodyAngularVelocity_meanY
a numeric vector. Mean body angular velocity on the y axis in the frequency-domain. Units=radians/second
###fBodyAngularVelocity_meanZ
a numeric vector. Mean body angular velocity on the z axis in the frequency-domain. Units=radians/second
###fBodyAngularVelocity_meanFrequencyX
a numeric vector. Mean frequency of body angular velocity on the x axis in the frequency-domain. Units=radians/second
###fBodyAngularVelocity_meanFrequencyY
a numeric vector. Mean frequency of body angular velocity on the y axis in the frequency-domain. Units=radians/second
###fBodyAngularVelocity_meanFrequencyZ
a numeric vector. Mean frequency of body angular velocity on the z axis in the frequency-domain. Units=radians/second
###fBodyAccelerationMagnitude_mean
a numeric vector. Mean Euclidean magnitude of body acceleration in the frequency-domain. Units=g
###fBodyAccelerationMagnitude_meanFrequency
a numeric vector. Mean frequency of body acceleration euclidean magnitude in the frequency-domain. Units=g
###fBodyBodyAccelerationJerkMagnitude_mean
a numeric vector. Mean Euclidean magnitude of the body-body acceleration jerk in the frequency-domain. Units=g
###fBodyBodyAccelerationJerkMagnitude_meanFrequency
a numeric vector. Mean frequency of body-body acceleration jerk euclidean magnitude in the frequency-domain. Units=g
###fBodyBodyAngularVelocity_mean
a numeric vector. Mean body-body angular velocity in the frequency-domain. Units=radians/second
###fBodyBodyAngularVelocity_meanFrequency
a numeric vector. Mean frequency of body-body angular velocity in the frequency-domain. Units=radians/second
###fBodyBodyAngularVelocityJerk_mean
a numeric vector. Mean body-body angular velocity jerk in the frequency-domain. Units=radians/second
###fBodyBodyAngularVelocityJerk_meanFrequency
a numeric vector. Mean frequency of body-body angular velocity jerk in the frequency-domain. Units=radians/second
###tBodyAcceleration_stdX
a numeric vector. Standard deviation of body acceleration on the x axis in the time-domain. Units=g
###tBodyAcceleration_stdY
a numeric vector. Standard deviation of body acceleration on the y axis in the time-domain. Units=g
###tBodyAcceleration_stdZ
a numeric vector. Standard deviation of body acceleration on the z axis in the time-domain. Units=g
###tGravityAcceleration_stdX
a numeric vector. Standard deviation of gravity acceleration on the x axis in the time-domain. Units=g

    \item{\code{tGravityAcceleration_stdY}}{a numeric vector}
    \item{\code{tGravityAcceleration_stdZ}}{a numeric vector}
    \item{\code{tBodyAccelerationJerk_stdX}}{a numeric vector}
    \item{\code{tBodyAccelerationJerk_stdY}}{a numeric vector}
    \item{\code{tBodyAccelerationJerk_stdZ}}{a numeric vector}
    \item{\code{tBodyAngularVelocity_stdX}}{a numeric vector}
    \item{\code{tBodyAngularVelocity_stdY}}{a numeric vector}
    \item{\code{tBodyAngularVelocity_stdZ}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerk_stdX}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerk_stdY}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerk_stdZ}}{a numeric vector}
    \item{\code{tBodyAccelerationMagnitude_std}}{a numeric vector}
    \item{\code{tGravityAccelerationMagnitude_std}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkMagnitude_std}}{a numeric vector}
    \item{\code{tBodyAngularVelocityMagnitude_std}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkMagnitude_std}}{a numeric vector}
    \item{\code{fBodyAcceleration_stdX}}{a numeric vector}
    \item{\code{fBodyAcceleration_stdY}}{a numeric vector}
    \item{\code{fBodyAcceleration_stdZ}}{a numeric vector}
    \item{\code{fBodyAccelerationJerk_stdX}}{a numeric vector}
    \item{\code{fBodyAccelerationJerk_stdY}}{a numeric vector}
    \item{\code{fBodyAccelerationJerk_stdZ}}{a numeric vector}
    \item{\code{fBodyAngularVelocity_stdX}}{a numeric vector}
    \item{\code{fBodyAngularVelocity_stdY}}{a numeric vector}
    \item{\code{fBodyAngularVelocity_stdZ}}{a numeric vector}
    \item{\code{fBodyAccelerationMagnitude_std}}{a numeric vector}
    \item{\code{fBodyBodyAccelerationJerkMagnitude_std}}{a numeric vector}
    \item{\code{fBodyBodyAngularVelocityMagnitude_std}}{a numeric vector}
    \item{\code{fBodyBodyAngularVelocityJerkMagnitude_std}}{a numeric vector}
  }
}
##Details
- Features are normalized and bounded within [-1,1].
- Each feature vector is a column on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The angular velocity units are rad/seg.

##License

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

## Other related publications

[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz.  Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care.   Volume 19, Issue 9. May 2013

[3] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 
