
library(dplyr);

#Downloading the file
if(!file.exists("./data")){dir.create("./data")}
Url <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Url, destfile="./data/Dataset.zip", method="curl")

#Unzip the file and store the file names as "files" 
unzip(zipfile="./data/Dataset.zip",exdir="./data")
files<-list.files("./data", recursive=TRUE)

#Read the training data from 21 unique subjects on 6 basic activities via phone accelerometer and gyroscope measurements.
#         Subjects      (Data=Subject_train     Dim=7352 by 1     Content=Subject ID), 
#         Activity      (Data=Y_train           Dim=7352 by 1     Content=Activity type), and 
#         Measurements  (Data=X_train           Dim=7352 by 561   Content=smartphone measurements on 561 time and frequency domain variables from accelerometer and gyroscope)
X_train<-read.table("./data/UCI HAR Dataset/train/X_train.txt",header=FALSE)
Y_train<-read.table("./data/UCI HAR Dataset/train/y_train.txt",header=FALSE)
Subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header=FALSE)

#Read the test data from 9 unique subjects on 6 basic activities via phone accelerometer and gyroscope measurements.
#         Subjects      (Data=Subject_test      Dim=2947 by 1     Content=Subject ID), 
#         Activity      (Data=Y_test            Dim=2947 by 1     Content=Activity type), and 
#         Measurements  (Data=X_test            Dim=2947 by 561   Content=smartphone measurements on 561 time and frequency domain variables from accelerometer and gyroscope)
X_test<-read.table("./data/UCI HAR Dataset/test/X_test.txt",header=FALSE)
Y_test<-read.table("./data/UCI HAR Dataset/test/y_test.txt",header=FALSE)
Subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",header=FALSE)

#Read the text labels of the Activity codes in Y_train and Y_test datasets above
Activity <-read.table("./data/UCI HAR Dataset/activity_labels.txt",header=FALSE)

#Read the text labels of the Features codes in X_train and X_test datasets as measured from the accelerometer and gyroscope above
Features <-read.table("./data/UCI HAR Dataset/features.txt",header=FALSE)

#Combining the training and test data set into a single dataframe and naming the columns appropriately
Train <- cbind(Subject_train, Y_train, X_train)
Test <- cbind(Subject_test, Y_test, X_test)
CompleteSet<-rbind(Train,Test)
colnames(CompleteSet) <-c("Subject", "Activity", as.character(Features$V2))


#Selecting only the measurements on the mean and standard deviation for acceleration and gyroscope measurements. 
subdataFeaturesNames<-Features$V2[grep("mean\\(\\)|std\\(\\)", Features$V2)]
selectedNames<-c("Subject", "Activity", as.character(subdataFeaturesNames))
CompleteSet<-subset(CompleteSet,select=selectedNames)

#Replacing the factor codes of activity with the factor names from the activity file
CompleteSet$Activity <-factor(CompleteSet$Activity, levels= Activity[ ,1], labels=Activity[ ,2])

#Substituting the abbreviated t, f, Acc, Gyro, Mag with the corresponding descriptive names time, frequency, Accelerometer, Gyroscope and Magnitude respectively
names(CompleteSet)<-gsub("^t", "time", names(CompleteSet))
names(CompleteSet)<-gsub("^f", "frequency", names(CompleteSet))
names(CompleteSet)<-gsub("Acc", "Accelerometer", names(CompleteSet))
names(CompleteSet)<-gsub("Gyro", "Gyroscope", names(CompleteSet))
names(CompleteSet)<-gsub("Mag", "Magnitude", names(CompleteSet))
names(CompleteSet)<-gsub("BodyBody", "Body", names(CompleteSet))

#Creating an alternative tidy representation of the data
Data2<-aggregate(. ~Subject + Activity, Data1, mean)
Data2<-arrange(Data2, Subject,Activity)

#Writing the final data set as a text file
write.table(Data2, file = "tidydata.txt",row.name=FALSE)
