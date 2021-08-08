
library(dplyr)

## read data files
testX <- read.table("./UCI HAR Dataset/test/X_test.txt")
testy <- read.table("./UCI HAR Dataset/test/y_test.txt")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
trainX <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainy <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## merge training and test for features data set
X <- rbind(testX, trainX)
## use the second column in the features table to name the columns in the features data
colnames(X) <- features$V2
## merge training and test for activity data set
y <- rbind(testy, trainy)
## name the columns in the labels table
colnames(labels) <- c("activity_code", "activity")
## match the activity codes in the activity data set with the descriptive activity names from the labels table
y <- inner_join(y, labels, by= c("V1" = "activity_code"))
## remove the column with activity codes and keep the column with names: "activity"
y$V1 <- NULL
## merge training and test for subject data set
subject <- rbind(testsubject, trainsubject)
## name the column: "subject"
colnames(subject) <- "subject"
## remove every variable from the features data set except mean and standard deviation
X <- X[grep('mean\\(\\)|std\\(\\)', colnames(X))]
## merge the data sets for features, subjects and activities into one data set
data <- cbind(subject, y , X)

##group data by subject and activity, summarize across all features using mean and add "_average" at the end of column names
tidy_data <- data %>%
  group_by(subject, activity) %>%
  summarize(across( everything(), mean, .names = "{.col}_average"))
##create a txt file with the tidy data set above
write.table(tidy_data,"./tidy_data.txt", row.name = FALSE)