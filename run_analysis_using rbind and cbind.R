##PACKAGES
install.packages("dplyr", dependencies = TRUE)
install.packages("data.table")

library(dplyr)
library(data.table)


##PREPARATORY WORK

##create and set working directory
mainDir <- "G:\\qua\\Business Intelligence\\developers\\44 - NileshV\\R\\Coursera\\Getting and Cleaning Data"
subDir <- "Project" 

dir.create(file.path(mainDir, subDir))
setwd(file.path(mainDir, subDir))

##download & extract zip file
td<- tempdir()
tf <- tempfile(tmpdir=td,fileext=".zip")

download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",tf)

fname <- unzip (tf, list=TRUE)$Name
unzip(tf, files=fname, exdir=file.path(mainDir, subDir),overwrite=TRUE) 

unlink(tf)
unlink(td)

##LOAD DATA INTO R

## labels
activity_labels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt")
features <- read.table(".\\UCI HAR Dataset\\features.txt")

##test
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
x_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")

##train
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
x_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")


##STEP 1 

##merge data
test<-cbind(subject_test,x_test,y_test)
train <- cbind(subject_train,x_train,y_train)

##assign names
features$V2<-as.character(features$V2)
names(test) <- c("subject",features$V2,"activity")
names(train) <- c("subject",features$V2,"activity")

#merge test and train data
test_and_train <- rbind(test,train)


##STEP 2 

mean_and_std <- features[features$V2 %like% "Mean" | features$V2 %like% "mean" | features$V2 %like% "std" ,"V2"]

test_and_train_tidy <- test_and_train[,c("subject","activity",mean_and_std)]


##STEP 3 Attaching Activity Labels

test_and_train_tidy$activity <- factor(test_and_train_tidy$activity, levels=c(1,2,3,4,5,6), labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))


##STEP 4


##STEP 5

subject_and_activity <- group_by_(test_and_train_tidy,.dots = c("subject","activity"))

v1<-summarise_each(subject_and_activity,funs(mean))


