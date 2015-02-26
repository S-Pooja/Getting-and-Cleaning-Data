
# Study design


### Tidy Dataset from the Human Activity Recognition Using Smartphones Data

- This script creates a tidy data file using the raw Human Activity Recognition Using Smartphones Dataset from the initial experiments were performed by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto at Smartlab - Non Linear Complex Systems Laboratory, DITEN - Universit‡ degli Studi di Genova, in Via Opera Pia 11A, I-16145, Genoa, Italy.

- The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

- Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. 

- The experiments were video-recorded to label the data manually. 

- The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

- The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 

- The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 

- The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


### Steps to tidy data


- Following steps are performed to arrive at the tidy data from the original raw data set:

-- Download the file

-- Unzip the file and store the file names as "files" 

- Read the training data from 21 unique subjects on 6 basic activities via phone accelerometer and gyroscope measurements.

-         Subjects      (Data=Subject_train     Dim=7352 by 1     Content=Subject ID), 

-         Activity      (Data=Y_train           Dim=7352 by 1     Content=Activity type), and 

-         Measurements  (Data=X_train           Dim=7352 by 561   Content=smartphone measurements on 561 time and frequency domain variables from accelerometer and gyroscope)

-Read the test data from 9 unique subjects on 6 basic activities via phone accelerometer and gyroscope measurements.

-         Subjects      (Data=Subject_test      Dim=2947 by 1     Content=Subject ID), 

-         Activity      (Data=Y_test            Dim=2947 by 1     Content=Activity type), and 

-         Measurements  (Data=X_test            Dim=2947 by 561   Content=smartphone measurements on 561 time and frequency domain variables from accelerometer and gyroscope)

- Read the text labels of the Activity codes in Y_train and Y_test datasets above

- Read the text labels of the Features codes in X_train and X_test datasets as measured from the accelerometer and gyroscope above

- Combine the training and test data set into a single dataframe and naming the columns appropriately

- Select only the measurements on the mean and standard deviation for acceleration and gyroscope measurements. 

- Replace the factor codes of activity with the factor names from the activity file

- Substitute the abbreviated t, f, Acc, Gyro, Mag with the corresponding descriptive names time, frequency, Accelerometer, Gyroscope and Magnitude respectively

- Create an alternative tidy representation of the data by summarizing the data as mean of the measurements for each donor for a given activity. 

- Write the final data set as a text file
