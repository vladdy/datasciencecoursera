Class project for Getting and Cleaning Data MOOC
========================================================

The repo includes the following files:

* [README.md](README.md) <-- This file
* [CodeBook.md](CodeBook.md):  A code book that describes the variables, the data, and any transformations or work performed to clean up 
* [run_analysis.R](run_analysis.R): A script that does all the work

Usage
========================================================

To create "data" and "tidy_data" data frames with data from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), please do the following:

1. Download a zip file with data by the link below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

2. Unzip it (you should get a folder called "UCI HAR Dataset" as the result.

3. Set your working directory in R to the directory with the "UCI HAR Dataset" folder.

4. Run "source([PATH_TO_]/run_analysis.R".

5. You should get two dataframes initialized: "data" with the both training and test data sets combined and cleaned from not important to us variables and "tidy_data" with the average of each variable for each activity and each subject from "data".

See [CodeBook.md](CodeBook.md) for details. 
