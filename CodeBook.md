This dataset is developed from UCI HAR Dataset. The train and test data sets contain subject numbers, activity labels and mesurement data in three seperate files. The three data sets are combined and then the two train and test data sets are combined further.

The combined one data set contains both the train and test data. The average of each variable for each activity and each subject was calculated. And the result data set is described and uploaded here.

* Subject  the number of experiment subjects, which are numbered in 1-30                 
* Activity  activity names which are described in *activity_labels.txt*

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Mean values and Standard deviation values were computed and kept seperately with names "mean()" and "std()".

So we get the following variables. The following variables contain average of each variable for each activity and each subject.

* tBodyAcc-mean()-X          
* tBodyAcc-mean()-Y          
* tBodyAcc-mean()-Z          
* tBodyAcc-std()-X           
* tBodyAcc-std()-Y           
* tBodyAcc-std()-Z           
* tGravityAcc-mean()-X       
* tGravityAcc-mean()-Y       
* tGravityAcc-mean()-Z       
* tGravityAcc-std()-X        
* tGravityAcc-std()-Y        
* tGravityAcc-std()-Z        
* tBodyAccJerk-mean()-X      
* tBodyAccJerk-mean()-Y      
* tBodyAccJerk-mean()-Z      
* tBodyAccJerk-std()-X       
* tBodyAccJerk-std()-Y       
* tBodyAccJerk-std()-Z       
* tBodyGyro-mean()-X         
* tBodyGyro-mean()-Y         
* tBodyGyro-mean()-Z         
* tBodyGyro-std()-X          
* tBodyGyro-std()-Y          
* tBodyGyro-std()-Z          
* tBodyGyroJerk-mean()-X     
* tBodyGyroJerk-mean()-Y     
* tBodyGyroJerk-mean()-Z     
* tBodyGyroJerk-std()-X      
* tBodyGyroJerk-std()-Y      
* tBodyGyroJerk-std()-Z      
* tBodyAccMag-mean()         
* tBodyAccMag-std()          
* tGravityAccMag-mean()      
* tGravityAccMag-std()       
* tBodyAccJerkMag-mean()     
* tBodyAccJerkMag-std()      
* tBodyGyroMag-mean()        
* tBodyGyroMag-std()         
* tBodyGyroJerkMag-mean()    
* tBodyGyroJerkMag-std()     
* fBodyAcc-mean()-X          
* fBodyAcc-mean()-Y          
* fBodyAcc-mean()-Z          
* fBodyAcc-std()-X           
* fBodyAcc-std()-Y           
* fBodyAcc-std()-Z           
* fBodyAccJerk-mean()-X      
* fBodyAccJerk-mean()-Y      
* fBodyAccJerk-mean()-Z      
* fBodyAccJerk-std()-X       
* fBodyAccJerk-std()-Y       
* fBodyAccJerk-std()-Z       
* fBodyGyro-mean()-X         
* fBodyGyro-mean()-Y         
* fBodyGyro-mean()-Z         
* fBodyGyro-std()-X          
* fBodyGyro-std()-Y          
* fBodyGyro-std()-Z          
* fBodyAccMag-mean()         
* fBodyAccMag-std()          
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyAccJerkMag-std()  
* fBodyBodyGyroMag-mean()    
* fBodyBodyGyroMag-std()     
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std() 