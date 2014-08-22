# Getting and Cleaning Data Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Background and source of the data
A series of experiments have been carried out with a group of 30 volunteers (a.k.a subjects) within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The Dataset - Subjects, Activity and Features
The data was collected from :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset included the following :

* 'features_info.txt': Shows information about the variables used on the feature vector
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables.
* Its activity label. 
* An identifier of the subject who carried out the experiment.

## Processing the Tidy data - The script run_analysis.R
Goal is to create a tidy dataset from the given training, test, features set etc.
The script run_analysis.R loads in the datasets and outputs a tidydata.txt file.
It performs the following operations : 

* Step 1 --> Merges the training and test sets
    + Reads in the subject_train.txt, y_train.txt, X_train.txt
    + Make the training data set in the format --> subject, activity, features
    + Reads in the subject_test.txt, y_test.txt, X_test.txt
    + Make the test data set in the format --> subject, activity, features
    + Merge training dataset and test dataset and store in the R object "all_data"
    + Name all the variables in the merged dataset like they are in the training/test set.

Relevant R objects at this stage is "all_data" which has training and test set data with subject, activity number and features with their names.

* Step 2 --> Create a data.frame with only measurements on mean and std as features for each measurement.

#### Which features are selected
**mean/std at the end** : All the features which indicated they were the mean or standard deviation of any measurement were selected. For example : tBodyAcc-mean()-X was selected as it is the "mean of the time doamin signal measured by the accelerometer in X axis".Hence all the features which end with "-mean()" and "-std()" were selected.

**mean/std in the middle** : Features like "fBodyGyro-meanFreq()-X" means -- Weighted average of the frequency components to obtain a mean frequency of the measurements by gyroscope in X axis. Basically it is a mean Frequency. Hence features like these were also selected.

**mean inside brackets** : Features like "angle(tBodyAccMean,gravity)" are basically the angle measurement between the two arguments - tBodyAccMean and gravity. Though it involves a mean component but the feature is an angle between two vectors and not a mean. Hence features like these were not selected.

The following process was done to obtain the required features :

* Search for "mean" and "std" in the feature vector name with the grep command in the names of the features. (This is beacause of the above justification for selection of the features)
* The resulting data is stored in R object called data_mean_std. Its dimension is 10999 rows and 81 columns. (subject, activity and 79 mean and std features)
* data_mean_std has "subject" and "activity" in its 1st and 2nd columns respectively. The description of the variables are in the CodeBook.
    
Relevant R objects at this stage is "data_mean_std" with subject, activity number and measurements on mean and std as features.

* Step 3 --> Replace the activity numbers with the appropriate activity names.
    + Read the activity labels from the file "activity_labels.txt"
    + Replace the activity column in the data_mean_std with the appropriate activity.

Relevant R objects at this stage is "data_mean_std" with subject, activity name and measurements on mean and std as features.

* Step 4 --> Provide descriptive variable names to make the features more understandable.
    + The varibles were tidied up to make them more understandable. The "gsub" command was used to replace short forms like "Gyro with gyroscope", "Mag with Magnitude" etc.
    + The codebook contains the description of these variables.
    + Eg. "tBodyAcc-mean()-X" was converted to "tBodyAccelerationMeanX". The name gives a clear meaning that it is the mean of a time domain signal measured with the accelerometer, acceleration of the body, in the x-axis direction. The tBodyGyroscopeMeanX is similar but measured with the gyroscope and hence associated with angular components.
    
Relevant R objects at this stage is "data_mean_std_var" with subject, activity name and measurements on mean and std as features with descriptive variable names.

* Step 5 --> Independent tidy data set with the average of each variable for each activity and each subject. (dependency on the R-package reshape2)
    + melt the data_mean_std_var to create a tall skinny dataset with id variables as subject and activity names and measure variables are the features.
    + cast the mean function to the molten data.
The resulting tidy data has 180 rows. This is because 30 subjects doing 6 activities each.

Relevant R objects at this stage is "tidydata" with subject, activity name and the average of each variable for each activity and each subject. The description of the features is available in the CodeBook.
Finally, the data is saved with write.table as "tidydata.txt". It is a space delimited file.

## The CodeBook
The CodeBook contains the meanings/description of the variables (activity, subject and the features) of the tidy data set. The description will include : 

* variable name
* variable field width
* variable definition
* range of values
