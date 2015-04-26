##STEP 0: PREPARATORY WORK
##Check if relevant files stored in the working directory.

dir_exists <- file.exists("./UCI HAR Dataset")
labels_exist <-file.exists("./descriptive labels.txt")

if(!dir.exists) {
  print("UCI HAR Dataset directory not found.")
}

else if(!file.exists & !dir_exists) {
  print("descriptive labels.txt not found.")
}

else {
  
##Load packages
library(dplyr)
library(tidyr)
library(data.table)
  
##Load data into R
## labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

##test
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

##train
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")


##STEP 1 
##merge data
test <- bind_cols(subject_test,y_test,x_test)
train <- bind_cols(subject_train,y_train,x_train)

##assign temporary column headders
#create a new column V3 to deal with duplicates in V2
features <- mutate(features,V3=paste(V1,V2))

names(test) <- c("subject","activity",features$V3)
names(train) <- c("subject","activity",features$V3)

#merge test and train data
test_and_train <- bind_rows(test,train)


##STEP 2 Select Columns on Mean and STD
test_and_train_tidy <- bind_cols (
  select(test_and_train, contains("subject")),
  select(test_and_train, contains("activity")),
  select(test_and_train, contains("mean")),
  select(test_and_train, contains ("std")))
  
##STEP 3 Attaching Activity Labels
test_and_train_tidy$activity <- factor(test_and_train_tidy$activity, levels=c(1,2,3,4,5,6), labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

##STEP 4 Meaningful Column Headers
names(test_and_train_tidy) <- read.table("descriptive labels.txt")$V1

##STEP 5 Summarise Data by Mean of each variables
subject_and_activity <- group_by(test_and_train_tidy, subject,activity)

write.table(summarise_each(subject_and_activity,funs(mean)),"tidy data.txt",sep=" ", row.name=FALSE)
}