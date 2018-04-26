# Getting-and-Cleaning-Data-Course-Project
This repository hosts the R script and files for the course project of Coursera course "Getting and Cleanning data" 
in the Data Science track.

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
The sample data being used in this project is data collectec from accelerometers from the Samsung Galaxy S smartphone.

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Files
This repository contains the following files:

README.md, this file, which provides an overview of the data set and how it was created.

tidyDataSet.txt, which contains the clean data set.

CodeBook.md, the code book, that describes the variables, the data, and any transformations or work that you performed to clean up the data.

run_analysis.R, the R script that was used to create the data set.

# Creating the data set
run_analysis.R can be used to create the data set. The R script does the following transformation to produce th final data set.

Download and unzip source data if it doesn't exist.

Read data.

Merge the training and the test sets to create one data set.

Extract only the measurements on the mean and standard deviation for each measurement.

Use descriptive activity names to name the activities in the data set.

Appropriately label the data set with descriptive variable names.

Create a second, independent tidy set with the average of each variable for each activity and each subject.

Write the data set to the tidy_data.txt file.

# Note
Before running run_analysis.R, zip files need to be downloaded to a designated path in your local drive, therefore, the path 
in the read.table function has to be updated to be the designated path.
