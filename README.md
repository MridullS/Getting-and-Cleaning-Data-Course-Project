Getting and Cleaning Data Project
This project is the final project for a Coursera course named as Getting and Cleaning Data.

This page explains how the script works as well as how it connects with other files in the repo

Project Goal
This project has following goals to accomplish:

Prepare a tidy dataset.
A link to a Github repository with script for performing the analysis.
A code book that describes the variables, the data, and any transformations or work that performed to clean up the data called CodeBook.md.
Script Goal
Particularly, the R script proided should achieve following goals:

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
And please see comments in the script for how each requirement is met.


Class Project for "Getting and Cleaning Data"
The class project for Getting and Cleaning Data was to read in the "Human Activity Recognition Using Smartphones" data set, perform an analysis on the data set, and output a tidy data set.

Here are the steps that must be performed before running the R script:
    
    Download the zip file from this URL.
Unzip the file.
Move ALL of the following files to the SAME DIRECTORY as the R script:
    features.txt
subject_train.txt
subject_test.txt
X_train.txt
X_test.txt
y_train.txt
y_test.txt
Once those steps are complete, you can run the R script (run_analysis.R). Note that it requires the reshape2 package, which can be downloaded from CRAN.

The output of the R script is a tidy data set, tidy.csv.

You can read more about the data and the analysis in the code book.