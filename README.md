## Getting and Cleaning Data: Course Project
=========================================
This coursera Getting and Cleaning Data project creates a tidy data set from the 'Human Activity Recognition Using Smartphones Data Set' from UCI: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This repo includes an analysis script to create a tidy data set from the raw data (run_analysis.R), the resulting tidy data set (GaCD_proj_tidy_data.txt), and a codebook to describe the transformations applied to the raw data and the resulting variables in the tidy data set.

run_analysis.R assumes the UCI_HAR_Dataset is saved at ~/Data/UCI_HAR_Dataset.  It reads in the X_train and X_test .txt files, matches them to their subjects and activities listed in the y_train and y_test .txt files. It then extracts only the variables giving the mean and standard deviation, renames the variables and activities and stores them in a data framed called merged.data.

A smaller tidy data set is then made from the average values for each activity and subject.  This data set is saved to ~/Data/GaCD_proj_tidy_data.txt.
