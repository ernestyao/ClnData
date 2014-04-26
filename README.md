ClnData
=======

Project of [Getting and Cleaning Data of Johns Hopkins Univ. on Coursera](https://class.coursera.org/getdata-002/)

## Script Description

There's one *run_analysis.R* script in this repo. The script merge two datasets and create a new tidy one. It works as follows:

1. The script loads three train data files with `read.table()` first. And it loads *features.txt* as column names of the "x_train" dataset.

2. The column names of "x_train" data sets are modified using loaded *features.txt*. The first two column was named "Activity_Label" and "Subject".

3. Use `cbind()` to combine the three data sets and we get a complete train data set.

4. Do step 1-3 to test data files. A complete test data set is developed.

5. Use `rbind()` to combine train and test data sets. We get the one data set (`data1`) meeting the first requirement of the project.

6. Use `grep()` to retrieve `data1` columns with names containing "mean()" or "std()". Measurements on the mean and standard deviation for each measurement are kept in `data2` with subjects and activity labels.

7. Load *activity_labels.txt* as `actnames` and merge it with `data2` by activity labels. In this step we translate activity labels to activity names. Then we get a new clean data set `data4`.

8. Use `aggregate()` to calculate the average of each variable for each activity and each subject. The result data set is assigned to `result`. This is the tidy data set required by the project.

9. The script writes the result data set to a text file named `DataSet.txt`, which is contained in this repo as `Result.txt`.

## Requirements
1. Data file from the project was unzipped. You should get a folder named *UCI HAR Dataset*. Put it in your R default working directory with run_analysis.R.
2. This R script is developed in R v3.0.2 with Mac OS X 10.9.2. It should work regardless of your operation system.
