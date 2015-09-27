## CodeBook
=================

This codebook is a modification of the features_into.txt document in the UCI_HAR_Dataset downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and describes all the variables and summaries calculated by run_analysis.R, 

The raw data of the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccXYZ and TimeGyroXYZ. These time domain signals were processed as described in the features_into.txt document in the UCI_HAR_Dataset to produce 3D Jerk and corresponding magnitudes.

run_analysis.R reads in and combines these signals (stored in the /train/X_train.txt and /test/X_test.txt files), pairs them with their activity (stored in the /train/y_train.txt and /test/y_test.txt files) and subject ID (stored in the /train/subject_train.txt and /test/subject_test.txt files).

The mean and standard deviation of each measurement are extracted and the activitiy and variable names are modified to be more descriptive.  This tidy data set is saved in the merged.data data frame.

A second tidy data set, called tidy.data, is created.  This data set includes only the mean value of each variable for each activity and subject.  It is written to the file GaCD_proj_tidy_data.txt.

There are 30 subjects, named with a unique ID number between 1 and 30.

The activity names and variables are described below.

# Activtiy names 
------------------
These describe the type of activity performed by the subject.  They are:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

# Variables
----------------


The variables described the measurements taken during each activity for each subject. The time domain signals are prefaced with Time, the fourier domain signals are prefaced with Frequency. Linear body acceleration contains the words BodyAcc, low-frequency body acceleration is assumed to be due to gravity and is indicated by GravityAcc. Linear body jerk contains the words BodyAccJerk. The Gyro signals are indicated by Gryo. The magnitudes of the vectors are indicated by Mag. The mean and standard deviation are indicated by Mean and StandardDeviation and the X,Y, and Z axies are added as a suffix. The full list of variables in the merged.data data frame are:

* TimeBodyAccMeanX
* TimeBodyAccMeanY
* TimeBodyAccMeanZ
* TimeBodyAccStandardDeviationX
* TimeBodyAccStandardDeviationY
* TimeBodyAccStandardDeviationZ
* TimeGravityAccMeanX
* TimeGravityAccMeanY
* TimeGravityAccMeanZ
* TimeGravityAccStandardDeviationX
* TimeGravityAccStandardDeviationY
* TimeGravityAccStandardDeviationZ
* TimeBodyAccJerkMeanX
* TimeBodyAccJerkMeanY
* TimeBodyAccJerkMeanZ
* TimeBodyAccJerkStandardDeviationX
* TimeBodyAccJerkStandardDeviationY
* TimeBodyAccJerkStandardDeviationZ
* TimeBodyGyroMeanX
* TimeBodyGyroMeanY
* TimeBodyGyroMeanZ
* TimeBodyGyroStandardDeviationX
* TimeBodyGyroStandardDeviationY
* TimeBodyGyroStandardDeviationZ
* TimeBodyGyroJerkMeanX
* TimeBodyGyroJerkMeanY
* TimeBodyGyroJerkMeanZ
* TimeBodyGyroJerkStandardDeviationX
* TimeBodyGyroJerkStandardDeviationY
* TimeBodyGyroJerkStandardDeviationZ
* TimeBodyAccMagMean
* TimeBodyAccMagStandardDeviation
* TimeGravityAccMagMean
* TimeGravityAccMagStandardDeviation
* TimeBodyAccJerkMagMean
* TimeBodyAccJerkMagStandardDeviation
* TimeBodyGyroMagMean
* TimeBodyGyroMagStandardDeviation
* TimeBodyGyroJerkMagMean
* TimeBodyGyroJerkMagStandardDeviation
* FrequencyBodyAccMeanX
* FrequencyBodyAccMeanY
* FrequencyBodyAccMeanZ
* FrequencyBodyAccStandardDeviationX
* FrequencyBodyAccStandardDeviationY
* FrequencyBodyAccStandardDeviationZ
* FrequencyBodyAccMeanFreqX
* FrequencyBodyAccMeanFreqY
* FrequencyBodyAccMeanFreqZ
* FrequencyBodyAccJerkMeanX
* FrequencyBodyAccJerkMeanY
* FrequencyBodyAccJerkMeanZ
* FrequencyBodyAccJerkStandardDeviationX
* FrequencyBodyAccJerkStandardDeviationY
* FrequencyBodyAccJerkStandardDeviationZ
* FrequencyBodyAccJerkMeanFreqX
* FrequencyBodyAccJerkMeanFreqY
* FrequencyBodyAccJerkMeanFreqZ
* FrequencyBodyGyroMeanX
* FrequencyBodyGyroMeanY
* FrequencyBodyGyroMeanZ
* FrequencyBodyGyroStandardDeviationX
* FrequencyBodyGyroStandardDeviationY
* FrequencyBodyGyroStandardDeviationZ
* FrequencyBodyGyroMeanFreqX
* FrequencyBodyGyroMeanFreqY
* FrequencyBodyGyroMeanFreqZ
* FrequencyBodyAccMagMean
* FrequencyBodyAccMagStandardDeviation
* FrequencyBodyAccMagMeanFreq
* FrequencyBodyAccJerkMagMean
* FrequencyBodyAccJerkMagStandardDeviation
* FrequencyBodyAccJerkMagMeanFreq
* FrequencyBodyGyroMagMean
* FrequencyBodyGyroMagstd
* FrequencyBodyGyroMagMeanFreq
* FrequencyBodyGyroJerkMagMean
* FrequencyBodyGyroJerkMagstd
* FrequencyBodyGyroJerkMagMeanFreq

In the smaller tidy data set, the average value for each activity for each subject is given.
