# Code book for Coursera Getting and Cleaning Data course project
The data set the this code book refers to is "tidy_data.txt" in this repository.
Background about this course project as well as the data set can be found in the "README.md" file.

# Data
"tidy_data.txt" is a text file with space-separated values.
Variable names are located in the first row and value to each variable for an observation is kept in the rest of rows.

# Variables
Identifiers

subjectId: represent each subject, ranging from 1 to 30.

activityType: activity identifier, string with 6 possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

# Average of measurements
79 measurement variables are included in this data set.

The features selected for the original data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Two of the measurements that are extracted for this data set are:
mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt' in the zip file for the course project.

The data set has been appropriately labeled with descriptive variable names.

# Transformations
The following transformations were applied to the source data:

Merges the training and the test sets to create one data set.

Extracts only the measurements on the mean and standard deviation for each measurement.

Uses descriptive activity names to name the activities in the data set. 1 to 6 were replaced by respective activities in the activity_labels.txt file.
 
Appropriately labels the data set with descriptive variable names, where timeDomain replaced t, FFT replaced f, 
Accelerometer replaced Acc, Gyroscope replaced Gyro, Magnitude replaced Mag, Frequency replaced Freq, Mean replaced mean, 
and StandardDeviation replaced std.

From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

