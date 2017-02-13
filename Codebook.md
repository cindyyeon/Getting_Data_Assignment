# Data Set Information 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the source captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

From the raw data above, I created one R script called run_analysis.R that does the followings:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Variables (HAR_Data) - 82 variables 

1. activity: class labels with their activity name. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 
2~31.  features for each 3-axial: tBodyAcc.mean...(X,Y,Z), tBodyAcc.std...(X,Y,Z), tGravityAcc.mean...(X,Y,Z), 
 								tGravityAcc.std...(X,Y,Z), tBodyAccJerk.mean...(X,Y,Z), tBodyAccJerk.std...(X,Y,Z), 
 								tBodyGyro.mean...(X,Y,Z), tBodyGyro.std...(X,Y,Z), tBodyGyroJerk.mean...(X,Y,Z), 
								tBodyGyroJerk.std...(X,Y,Z)
								
32~41. features: 				tBodyAccMag.mean.., tBodyAccMag.std.., tGravityAccMag.mean..,tGravityAccMag.std.., 
 								tBodyAccJerkMag.mean.., tBodyAccJerkMag.std.., tBodyGyroMag.mean.., tBodyGyroMag.std..,
								tBodyGyroJerkMag.mean.., tBodyGyroJerkMag.std..
								
42~68. features for each 3-axial: fBodyAcc.mean...(X,Y,Z), fBodyAcc.std...(X,Y,Z), fBodyAcc.meanFreq...(X,Y,Z), 
 								fBodyAccJerk.mean...(X,Y,Z), fBodyAccJerk.std...(X,Y,Z), fBodyAccJerk.meanFreq...(X,Y,Z),
								fBodyGyro.mean...(X,Y,Z), fBodyGyro.std...(X,Y,Z),  fBodyGyro.meanFreq...(X,Y,Z) 
								
69~80. features: 				fBodyAccMag.mean.., fBodyAccMag.std.., fBodyAccMag.meanFreq.., fBodyBodyAccJerkMag.mean..,
 								fBodyBodyAccJerkMag.std.., fBodyBodyAccJerkMag.meanFreq.., fBodyBodyGyroMag.mean..,
								fBodyBodyGyroMag.std.., fBodyBodyGyroMag.meanFreq.., fBodyBodyGyroJerkMag.mean..,
								fBodyBodyGyroJerkMag.std.., fBodyBodyGyroJerkMag.meanFreq
								
81. subject: 				the subject who performed the activity for each window sample. Its range is from 1 to 30.
 
82. activity_desc   
     
 
     
