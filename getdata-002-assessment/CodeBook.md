### Data

The orignal data are collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

and the data for the project is from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The archive contains a directory called "UCI HAR Dataset". 

### Variables

The data frame "data" contains the mean, standard deviation, subject and activity variables from the original dataset.

The data frame "tidy_data" contains the following variables created as the result of transformations explained in the next section:

```
 [1] "Subject"                "Activity"               "tBodyAcc-mean()-X"      "tBodyAcc-mean()-Y"     
 [5] "tBodyAcc-mean()-Z"      "tBodyAcc-std()-X"       "tBodyAcc-std()-Y"       "tBodyAcc-std()-Z"      
 [9] "tGravityAcc-mean()-X"   "tGravityAcc-mean()-Y"   "tGravityAcc-mean()-Z"   "tGravityAcc-std()-X"   
[13] "tGravityAcc-std()-Y"    "tGravityAcc-std()-Z"    "tBodyAccJerk-mean()-X"  "tBodyAccJerk-mean()-Y" 
[17] "tBodyAccJerk-mean()-Z"  "tBodyAccJerk-std()-X"   "tBodyAccJerk-std()-Y"   "tBodyAccJerk-std()-Z"  
[21] "tBodyGyro-mean()-X"     "tBodyGyro-mean()-Y"     "tBodyGyro-mean()-Z"     "tBodyGyro-std()-X"     
[25] "tBodyGyro-std()-Y"      "tBodyGyro-std()-Z"      "tBodyGyroJerk-mean()-X" "tBodyGyroJerk-mean()-Y"
[29] "tBodyGyroJerk-mean()-Z" "tBodyGyroJerk-std()-X"  "tBodyGyroJerk-std()-Y"  "tBodyGyroJerk-std()-Z" 
[33] "fBodyAcc-mean()-X"      "fBodyAcc-mean()-Y"      "fBodyAcc-mean()-Z"      "fBodyAcc-std()-X"      
[37] "fBodyAcc-std()-Y"       "fBodyAcc-std()-Z"       "fBodyAccJerk-mean()-X"  "fBodyAccJerk-mean()-Y" 
[41] "fBodyAccJerk-mean()-Z"  "fBodyAccJerk-std()-X"   "fBodyAccJerk-std()-Y"   "fBodyAccJerk-std()-Z"  
[45] "fBodyGyro-mean()-X"     "fBodyGyro-mean()-Y"     "fBodyGyro-mean()-Z"     "fBodyGyro-std()-X"     
[49] "fBodyGyro-std()-Y"      "fBodyGyro-std()-Z"
```

The variable "Subject" has 30 subjects from 1 to 30. The variable "activity" has 6 levels (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS). The rest variables listed above are the the average of each mean() or std() measurement for each activity and each subject.

### Transformations

The R script [run_analysis.R](run_analysis.R) does the following:

1. Merges the training and the test data sets into one data set called "data".

2. Leaves only the variables for the mean, standard deviation, subject and activity.

3. Replaces the activity levels with descriptive names.

4. Creates the data set "tidy_data" with the average of each variable for each activity and each subject. 
