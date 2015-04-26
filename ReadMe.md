The R file can be read as six steps (one preparatory step + five steps asked in the assignment) each one of them is briefly described here.

###Requirements: 
######This run_analysis.R assumes that UCI HAR Dataset folder (unzipped data folder) is in working directory. 
######descriptive labels.txt is saved under working directory.

###Collection of the raw data
The data was collected from the a research project conducted by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto and Xavier Parra.\n
Link to data - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip \n
Link to research project - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones \n 


###Assumptions: 
This script assumes that dplyr, tidyr and data.table packages are installed.


###STEP 0: Load packages & Data into R:
In this step, R scripts read all the necessary eight txt files into following eight data frames 
(df). 

####code:
activity_labels <- read.table(".//UCI HAR Dataset/activity_labels.txt")
features <- read.table(".//UCI HAR Dataset/features.txt")

subject_test <- read.table(".//UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table(".//UCI HAR Dataset/test/X_test.txt")
y_test <- read.table(".//UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table(".//UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table(".//UCI HAR Dataset/train/X_train.txt")
y_train <- read.table(".//UCI HAR Dataset/train/y_train.txt")


###STEP 1: Merges the training and the test sets to create one data set:
subjects_x (x can be test or training) contains list of subjects, X contains measurements and Y 
contains activity codes. All these three files are first vertically merged using bind_columns.

test = sujects_text + y + x dim = (,563)
train = subject_train + y + x 
test_and_train = test + train

####code:
test <- bind_cols(subject_test,y_test,x_test)
train <- bind_cols(subject_train,y_train,x_train)

features$V2 cannot be used as the names of test_and_train due to duplicates. Therefore a new 
third variable V3 is created which is combination of exsiting two variables (V1, V2). 

Then a character vector combination of "subject", "activity" and all the members of features$V3 
was applied as the names of the merged file.

####code:
features <- mutate(features,V3=paste(V1,V2))

names(test) <- c("subject","activity",features$V3)
names(train) <- c("subject","activity",features$V3)

test_and_train <- bind_rows(test,train)

###STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement:
In this step all the variables with word mean and std are selected. In total there are 88
variables (2 identification variables - subject and activity + 86 measurements on mean and std).

####code:
test_and_train_tidy <- bind_cols (
  select(test_and_train, contains("subject")),
  select(test_and_train, contains("activity")),
  select(test_and_train, contains("mean")),
  select(test_and_train, contains ("std")))

###STEP 3: Uses descriptive activity names to name the activities in the data set
test_and_train$activity is factor, therefore it is easy to apply labels to the factor values in 
order to decode the codes to values. 

####code:
test_and_train_tidy$activity <- factor(test_and_train_tidy$activity, 
									   levels=c(1,2,3,4,5,6), 
									   labels = c("WALKING","WALKING_UPSTAIRS",
									   "WALKING_DOWNSTAIRS","SITTING",
									   "STANDING","LAYING"))


###STEP 4: Appropriately labels the data set with descriptive variable names. 
This step was carried out in sublime as it is easy to manipulate text. The following steps were 
followed to create descriptive variable names.

#####Copy the names(test_and_train) into a txt file
#####Remove numbers
#####Remove Paranthesis
#####Replace "-" with "_"
#####Replace initial t with time and f with frequency
#####Clean names to have capital letters only for a word combining two words e.g.BodyAcc & for axis
names (x, y & z)
#####attach mean_of_ in front of all measurements columns
#####save file as descriptive labels.txt

###STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average 
of each variable for each activity and each subject:
test_and_train_tidy is grouped by subject and activity and saved as subject_and_activity.
Then each of variables of subject_and_activity is summarised by function mean.

####Code: 
subject_and_activity <- group_by(test_and_train_tidy, subject,activity)
v2<-summarise_each(subject_and_activity,funs(mean))




