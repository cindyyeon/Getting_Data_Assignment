## Assignment
## It's done by Cindy Yeon (2017.2.12)
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

## Read training & test raw data
setwd("./UCI HAR Dataset")
X_train <- read.table(file="./train/X_train.txt")
y_train <- read.table(file="./train/y_train.txt")
X_test <- read.table(file="./test/X_test.txt")
y_test <- read.table(file="./test/y_test.txt")

features <- read.table(file="features.txt")
activity <- read.table(file="activity_labels.txt")

s_train <- read.table(file="./train/subject_train.txt")
s_test <- read.table(file="./test/subject_test.txt")

## Merge the training and test sets  
HAR_train <- cbind(X_train, s_train, y_train)
HAR_test <- cbind(X_test, s_test, y_test)
HAR <- rbind(HAR_train, HAR_test)

## Rename columns of the merged data
col_features <- chartr("()-", "...", features$V2)
colnames(HAR) <- c(col_features, "subject", "activity")

## Extract only the measurements on the mean and standard deviation
## with subject and activity variables
Collist <- c("subject", "activity", "mean", "std")
HAR <- HAR[,grep(paste(Collist, collapse="|"), colnames(HAR))]

## Uses descriptive activity names("activity_desc") to name the activities
colnames(activity) <- c("activity", "activity_desc")
HAR_Data <- merge(x=HAR, y=activity, by = "activity", all.x=TRUE) #left outer join
write.table(HAR_Data, "HAR_Data.txt", row.name = FALSE)

## Creates a second tidy data set with the average of each variable for 
## each activity and each subject.

library(stats)
HAR_avg_Data <- aggregate(. ~ activity + subject, 
                          data = HAR_Data, FUN = mean, na.rm = TRUE)
write.table(HAR_avg_Data, "HAR_avg_Data.txt", row.name = FALSE)
