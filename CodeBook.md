Study design
==================================================================
Tidy Dataset from the Human Activity Recognition Using Smartphones Data
==================================================================

This script creates a tidy data file using the raw Human Activity Recognition Using Smartphones Dataset from the initial experiments were performed by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto at Smartlab - Non Linear Complex Systems Laboratory, DITEN - Universit‡ degli Studi di Genova, in Via Opera Pia 11A, I-16145, Genoa, Italy.

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

==================================================================
For each record it is provided:
======================================

- An identifier of the subject who carried out the experiment.
- Its activity label.
- A 66-feature vector with average and standard deviation of the X, Y, Z, components and magnitude of the time and frequency domain variables as captured from the smartphone data. 
==================================================================



CodeBook
==================================================================

All column names of the original data set starting with t or f are prefixed with “time” and “frequency” respectively. 
All occurrences of “Acc” are replaced with "Accelerometer"
All occurrences of “Gyro” are replaced with "Gyroscope"
All occurrences of “Mag” are replaced with "Magnitude"
All occurrences of “BodyBody" are replaced with “Body”

Only the columns showing the Mean and Standard Deviation values are extracted, and the values are summarised by the average and standard deviations of all the measurements of a given subject for a particular activity. 


The following variables are reported in the tidy data set.
==================================================================

"Subject" (1 through 30)
"Activity" (1 through 6 for each subject)

Mean and Std Dev of X, Y and Z components of the timeBodyAccelerometer:
"timeBodyAccelerometer-mean()-X" 
"timeBodyAccelerometer-mean()-Y" 
"timeBodyAccelerometer-mean()-Z" 
"timeBodyAccelerometer-std()-X" 
"timeBodyAccelerometer-std()-Y" 
"timeBodyAccelerometer-std()-Z" 

Mean and Std Dev of X, Y and Z components of the timeGravityAccelerometer:
"timeGravityAccelerometer-mean()-X" 
"timeGravityAccelerometer-mean()-Y" 
"timeGravityAccelerometer-mean()-Z" 
"timeGravityAccelerometer-std()-X" 
"timeGravityAccelerometer-std()-Y" 
"timeGravityAccelerometer-std()-Z" 

Mean and Std Dev of X, Y and Z components of the timeGravityAccelerometerJerk:
"timeBodyAccelerometerJerk-mean()-X" 
"timeBodyAccelerometerJerk-mean()-Y" 
"timeBodyAccelerometerJerk-mean()-Z" 
"timeBodyAccelerometerJerk-std()-X" 
"timeBodyAccelerometerJerk-std()-Y" 
"timeBodyAccelerometerJerk-std()-Z" 

Mean and Std Dev of X, Y and Z components of the timeBodyGyroscope:
"timeBodyGyroscope-mean()-X" 
"timeBodyGyroscope-mean()-Y" 
"timeBodyGyroscope-mean()-Z" 
"timeBodyGyroscope-std()-X" 
"timeBodyGyroscope-std()-Y" 
"timeBodyGyroscope-std()-Z" 

Mean and Std Dev of X, Y and Z components of the timeBodyGyroscopeJerk:
"timeBodyGyroscopeJerk-mean()-X" 
"timeBodyGyroscopeJerk-mean()-Y" 
"timeBodyGyroscopeJerk-mean()-Z" 
"timeBodyGyroscopeJerk-std()-X" 
"timeBodyGyroscopeJerk-std()-Y" 
"timeBodyGyroscopeJerk-std()-Z" 

Mean and Std Dev of the magnitudes of the time domain variables above:
"timeBodyAccelerometerMagnitude-mean()" 
"timeBodyAccelerometerMagnitude-std()" 
"timeGravityAccelerometerMagnitude-mean()" "timeGravityAccelerometerMagnitude-std()" "timeBodyAccelerometerJerkMagnitude-mean()" "timeBodyAccelerometerJerkMagnitude-std()" 
"timeBodyGyroscopeMagnitude-mean()" 
"timeBodyGyroscopeMagnitude-std()" 
"timeBodyGyroscopeJerkMagnitude-mean()" 
"timeBodyGyroscopeJerkMagnitude-std()" 

Mean and Std Dev of X, Y and Z components of the frequencyBodyAccelerometer:
"frequencyBodyAccelerometer-mean()-X" 
"frequencyBodyAccelerometer-mean()-Y" 
"frequencyBodyAccelerometer-mean()-Z" 
"frequencyBodyAccelerometer-std()-X" 
"frequencyBodyAccelerometer-std()-Y" 
"frequencyBodyAccelerometer-std()-Z" 

Mean and Std Dev of X, Y and Z components of the frequencyBodyAccelerometerJerk:
"frequencyBodyAccelerometerJerk-mean()-X" 
"frequencyBodyAccelerometerJerk-mean()-Y" 
"frequencyBodyAccelerometerJerk-mean()-Z" 
"frequencyBodyAccelerometerJerk-std()-X" 
"frequencyBodyAccelerometerJerk-std()-Y" 
"frequencyBodyAccelerometerJerk-std()-Z" 

Mean and Std Dev of X, Y and Z components of the frequencyBodyGyroscope:
"frequencyBodyGyroscope-mean()-X" 
"frequencyBodyGyroscope-mean()-Y" 
"frequencyBodyGyroscope-mean()-Z" 
"frequencyBodyGyroscope-std()-X" 
"frequencyBodyGyroscope-std()-Y" 
"frequencyBodyGyroscope-std()-Z" 

Mean and Std Dev of the magnitudes of the frequency domain variables above:
"frequencyBodyAccelerometerMagnitude-mean()" "frequencyBodyAccelerometerMagnitude-std()" "frequencyBodyAccelerometerJerkMagnitude-mean()" "frequencyBodyAccelerometerJerkMagnitude-std()" "frequencyBodyGyroscopeMagnitude-mean()" 
"frequencyBodyGyroscopeMagnitude-std()" 
"frequencyBodyGyroscopeJerkMagnitude-mean()" "frequencyBodyGyroscopeJerkMagnitude-std()"






