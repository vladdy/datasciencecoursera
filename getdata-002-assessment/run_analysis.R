# Merge the training and the test sets to create one data set
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <-  read.table("UCI HAR Dataset/test/subject_test.txt")
  
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
subject_train <-  read.table("UCI HAR Dataset/train/subject_train.txt")

data <- rbind(cbind(X_test, subject_test, y_test), cbind(X_train, subject_train, y_train))
  
names(data) <- c(read.table("UCI HAR Dataset/features.txt", 
                            stringsAsFactors = FALSE)[,2], "Subject", "Activity")
 
# Extract only the measurements on the mean, standard deviation and activity for each measurement
data <- data[,grep("^(.+-mean\\((\\)).+|.+-std\\((\\)).+|Subject|Activity)$", names(data))]
  
# Use descriptive activity names to name the activities in the data set
data$Activity<-as.factor(data$Activity)
levels(data$Activity)<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
  
# Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
tidy_data <- aggregate(.~Subject+Activity, data = data, FUN=mean)

