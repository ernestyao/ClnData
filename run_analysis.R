## Created for project of "Getting and Cleaning Data"
## by Ernest Yao @Apr. 26, 2014

##Load and combine train data
sub_train <- read.table("./UCI\ HAR\ Dataset/train/subject_train.txt")
x_train <- read.table("./UCI\ HAR\ Dataset/train/X_train.txt")
y_train <- read.table("./UCI\ HAR\ Dataset/train/y_train.txt")

colname <- read.table("./UCI\ HAR\ Dataset/features.txt")
names(x_train) <- colname[,2]
names(y_train) <- c("Activity_Label")
names(sub_train) <- c("Subject")

train <- cbind(sub_train, y_train, x_train)

##Load and combine test data
sub_test <- read.table("./UCI\ HAR\ Dataset/test/subject_test.txt")
x_test <- read.table("./UCI\ HAR\ Dataset/test/X_test.txt")
y_test <- read.table("./UCI\ HAR\ Dataset/test/y_test.txt")
names(x_test) <- colname[,2]
names(y_test) <- c("Activity_Label")
names(sub_test) <- c("Subject")

test <- cbind(sub_test, y_test, x_test)

##Combine 1st dataset
data1 <- rbind(train, test)

## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
data2 <- data1[, c("Subject", "Activity_Label", grep("(mean|std)\\(\\)", names(data1), value=T))]

## 3. Uses descriptive activity names to name the activities in the data set
actnames <- read.table("./UCI\ HAR\ Dataset/activity_labels.txt")
names(actnames) <- c("Activity_Label", "Activity")
data3 <- merge(data2, actnames, by.x="Activity_Label", by.y="Activity_Label")
data4 <- data3[, c(2, 69, 3:68)]

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
result <- aggregate(. ~ Subject + Activity, data=data4, mean)

## Write the result to a text file
write.table(result, file = "DataSet.txt")