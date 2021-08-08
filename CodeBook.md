Human Activity Recognition Using Smartphones Data Set
=====================================================

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Retrieved from:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation  
mad(): Median absolute deviation  
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values.   
iqr(): Interquartile range   
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal  
kurtosis(): kurtosis of the frequency domain signal  
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  


The following files are used in this exercise:
=========================================

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

Cleaned data
=============

For the purpose of this exercise, only two sets of variables for each feature are used:

mean(): Mean value  
std(): Standard deviation  

Out of the initial 561 attributes, only 66 are selected.

The output is an independent tidy data set with the average of each variable for each activity and each subject.

The tidy data set contains the following variables:

subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  
activity: Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
tBodyAcc-mean()-X_average  
tBodyAcc-mean()-Y_average  
tBodyAcc-mean()-Z_average  
tBodyAcc-std()-X_average  
tBodyAcc-std()-Y_average  
tBodyAcc-std()-Z_average  
tGravityAcc-mean()-X_average  
tGravityAcc-mean()-Y_average  
tGravityAcc-mean()-Z_average  
tGravityAcc-std()-X_average  
tGravityAcc-std()-Y_average  
tGravityAcc-std()-Z_average  
tBodyAccJerk-mean()-X_average  
tBodyAccJerk-mean()-Y_average  
tBodyAccJerk-mean()-Z_average  
tBodyAccJerk-std()-X_average  
tBodyAccJerk-std()-Y_average  
tBodyAccJerk-std()-Z_average  
tBodyGyro-mean()-X_average  
tBodyGyro-mean()-Y_average  
tBodyGyro-mean()-Z_average  
tBodyGyro-std()-X_average  
tBodyGyro-std()-Y_average  
tBodyGyro-std()-Z_average  
tBodyGyroJerk-mean()-X_average  
tBodyGyroJerk-mean()-Y_average  
tBodyGyroJerk-mean()-Z_average  
tBodyGyroJerk-std()-X_average  
tBodyGyroJerk-std()-Y_average  
tBodyGyroJerk-std()-Z_average  
tBodyAccMag-mean()_average  
tBodyAccMag-std()_average  
tGravityAccMag-mean()_average  
tGravityAccMag-std()_average  
tBodyAccJerkMag-mean()_average  
tBodyAccJerkMag-std()_average  
tBodyGyroMag-mean()_average  
tBodyGyroMag-std()_average  
tBodyGyroJerkMag-mean()_average  
tBodyGyroJerkMag-std()_average  
fBodyAcc-mean()-X_average  
fBodyAcc-mean()-Y_average  
fBodyAcc-mean()-Z_average  
fBodyAcc-std()-X_average  
fBodyAcc-std()-Y_average  
fBodyAcc-std()-Z_average  
fBodyAccJerk-mean()-X_average  
fBodyAccJerk-mean()-Y_average  
fBodyAccJerk-mean()-Z_average  
fBodyAccJerk-std()-X_average  
fBodyAccJerk-std()-Y_average  
fBodyAccJerk-std()-Z_average  
fBodyGyro-mean()-X_average  
fBodyGyro-mean()-Y_average  
fBodyGyro-mean()-Z_average  
fBodyGyro-std()-X_average  
fBodyGyro-std()-Y_average  
fBodyGyro-std()-Z_average  
fBodyAccMag-mean()_average  
fBodyAccMag-std()_average  
fBodyBodyAccJerkMag-mean()_average  
fBodyBodyAccJerkMag-std()_average  
fBodyBodyGyroMag-mean()_average  
fBodyBodyGyroMag-std()_average  
fBodyBodyGyroJerkMag-mean()_average  
fBodyBodyGyroJerkMag-std()_average  



