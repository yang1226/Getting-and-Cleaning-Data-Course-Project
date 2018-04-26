library(dplyr)

# Step 0
# Read data
###########################################################################################################

# Read test tables
X_test <- read.table("M:/DS/Getting and Cleanning Data Course Project/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("M:/DS/Getting and Cleanning Data Course Project/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("M:/DS/Getting and Cleanning Data Course Project/UCI HAR Dataset/test/subject_test.txt")

# Read train tables
X_train <- read.table("M:/DS/Getting and Cleanning Data Course Project/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("M:/DS/Getting and Cleanning Data Course Project/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("M:/DS/Getting and Cleanning Data Course Project/UCI HAR Dataset/train/subject_train.txt")

# read feature vector
features <- read.table("M:/DS/Getting and Cleanning Data Course Project/UCI HAR Dataset/features.txt")

# read activity labels
activity_labels <- read.table("M:/DS/Getting and Cleanning Data Course Project/UCI HAR Dataset/activity_labels.txt")

# Step 1
# Merge data
###########################################################################################################

# Assign column names
colnames(X_test) <- features[, 2]
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(X_train) <- features[, 2]
colnames(y_train) <- "activityId"
colnames(subject_train) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

# Merge data into one set
merged_test <- cbind(y_test, subject_test, X_test)
merged_train <- cbind(y_train, subject_train, X_train)
merged_train_and_test <- rbind(merged_test, merged_train)

# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement
############################################################################################################

# Create a vector for defining ID, mean, and standard deviation
col_mean_std <- grepl("subject|activity|mean|std", colnames(merged_train_and_test))

# Subset the merged dataset using the vector created above
merged_train_and_test <- merged_train_and_test[, col_mean_std]

# Step 3
# Uses descriptive activity names to name the activities in the data set
###########################################################################################################

merged_train_and_test <- merge(merged_train_and_test, activity_labels, by = "activityId")

# Step 4
# Appropriately labels the data set with descriptive variable names
###########################################################################################################

# Get column names
col_merged_train_and_test <- colnames(merged_train_and_test)

# Expand abbreviations of variables
col_merged_train_and_test <- gsub("^f", "FFT", col_merged_train_and_test)
col_merged_train_and_test <- gsub("^t", "timeDomain", col_merged_train_and_test)
col_merged_train_and_test <- gsub("Acc", "Accelerometer", col_merged_train_and_test)
col_merged_train_and_test <- gsub("Gyro", "Gyroscope", col_merged_train_and_test)
col_merged_train_and_test <- gsub("Mag", "Magnitude", col_merged_train_and_test)
col_merged_train_and_test <- gsub("Freq", "Frequency", col_merged_train_and_test)
col_merged_train_and_test <- gsub("mean", "Mean", col_merged_train_and_test)
col_merged_train_and_test <- gsub("std", "StandardDeviation", col_merged_train_and_test)

# Assign the expanded column names to the merged data set
colnames(merged_train_and_test) <- col_merged_train_and_test

# Step 5
# Create a second, independent tidy set with the average of each 
# variable for each activity and each subject
###########################################################################################################

# Group by subject and activity and summarise using mean
tidyDataSet <- merged_train_and_test %>%
        group_by(subjectId, activityType) %>%
        summarise_all(funs(mean))

# output to file "tidyDataSet.txt"
write.table(tidyDataSet, "tidyDataSet.txt", row.names = FALSE)


