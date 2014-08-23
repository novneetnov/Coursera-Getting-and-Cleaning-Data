## CodeBook for the tidydata

* Information about the variables is provided in the following tabular form.
* All the features are normalized and bounded within [-1,1].
* Subject and activity are the variables which are categorical features.
* Each feature vector is a row on the tidydata.txt file.

## Background and source of the data
A series of experiments have been carried out with a group of 30 volunteers (a.k.a subjects) within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## General meanings of the variables :

Variable Name  | Variable Definition
---------------|----------------------
subject | A volunteer participated in the expt an age bracket of 19-48 years.
activity | An activity performed by the volunteer - (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
tBodyAccelerationMean | The mean of the measurements produced by the body acceleration component of the accelerometer signal in all the experiments for the certain subject and activity, in time domain.
tBodyAccelerationStd | The standard deviation of the measurements produced by the body acceleration component of the accelerometer signal in all the experiments for the certain subject and activity, in time domain.
tGravityAccelerationMean | The mean of the measurements produced by the gravity acceleration component of the accelerometer signal in all the experiments for the certain subject and activity, in time domain.
tGravityAccelerationStd | The standard deviation of the measurements produced by the gravity acceleration component of the accelerometer signal in all the experiments for the certain subject and activity, in time domain.
tBodyAccelerationJerkMean | The mean of the measurements produced by the body linear acceleration component to obtain jerk, in all the experiments for the certain subject and activity, in time domain.
tBodyAccelerationJerkStd | The standard deviation of the measurements produced by the body linear acceleration component to obtain jerk, in all the experiments for the certain subject and activity, in time domain.
tBodyGyroscopeMean | The mean of the measurements produced by the body component of the gyroscope signal in all the experiments for the certain subject and activity, in time domain.
tBodyGyroscopeStd | The standard deviation of the measurements produced by the body component of the gyroscope signal in all the experiments for the certain subject and activity, in time domain.
tBodyGyroscopeJerkMean | The mean of the measurements produced by the body component of angular velocity gyroscope signal to obtain jerk, in all the experiments for the certain subject and activity, in time domain.
tBodyGyroscopeJerkStd | The standard deviation of the measurements produced by the body component of angular velocity gyroscope signal to obtain jerk, in all the experiments for the certain subject and activity, in time domain.
tBodyAccelerationMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the body acceleration component of accelerometer signal, in all the experiments for the certain subject and activity, in time domain.
tBodyAccelerationMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the body acceleration component of accelerometer signal, in all the experiments for the certain subject and activity, in time domain.
tGravityAccelerationMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the gravity acceleration component of accelerometer signal, in all the experiments for the certain subject and activity, in time domain
tGravityAccelerationMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the gravity acceleration component of accelerometer signal, in all the experiments for the certain subject and activity, in time domain.
tBodyAccelerationJerkMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the body linear acceleration component to obtain jerk, in time domain.
tBodyAccelerationJerkMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the body linear acceleration component to objain jerk, in time domain. 
tBodyGyroscopeMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the body component of the gyroscope in time domain.
tBodyGyroscopeMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the body component of the gyroscope in time domain.
tBodyGyroscopeJerkMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the body component of angular velocity gyroscope signal to obtain jerk, in time domain.
tBodyGyroscopeJerkMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the body component of angular velocity gyroscope signal to obtain jerk, in time domain.
fBodyAccelerationMean | The mean of the measurements produced by the body acceleration component of the accelerometer signal in all the experiments for the certain subject and activity, in frequency domain (a FFT function applied on the signals)
fBodyAccelerationStd | The standard deviation of the measurements produced by the body acceleration component of the accelerometer signal in all the experiments for the certain subject and activity, in frequency domain.
fBodyAccelerationMeanFrequency | The mean frequency obtained by the weighted average of the frequency components which are the FFT of the body acceleration component of the accelerometer signal.
fBodyAccelerationJerkMean | The mean of the measurements produced by the body linear acceleration to obtain jerk in all the experiments for the certain subject and activity, in frequency domain(FFT applied)
fBodyAccelerationJerkStd | The standard deviation of the measurements produced by the body linear acceleration to obtain jerk in all the experiments for the certain subject and activity, in frequency domain(FFT applied)
fBodyAccelerationJerkMeanFrequency | The mean frequency obtained by the weighted average of the frequency components which are the FFT of the body linear acceleration component to objain jerk.
fBodyGyroscopeMean | The mean of the measurements produced by the body component of the gyroscope signal in all the experiments for the certain subject and activity, in frequency domain. (applying FFT)
fBodyGyroscopeStd | The standard deviation of the measurements produced by the body component of the gyroscope signal in all the experiments for the certain subject and activity, in frequency domain. (applying FFT)
fBodyGyroscopeMeanFrequency | The mean frequency obtained by the weighted average of the frequency components which are the FFT of the body component of the gyroscope signal.
fBodyAccelerationMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the body acceleration component of accelerometer signal, in all the experiments for the certain subject and activity, in frequency domain.
fBodyAccelerationMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the body acceleration component of accelerometer signal, in all the experiments for the certain subject and activity, in frequency domain.
fBodyAccelerationMagnitudeMeanFrequency | The mean frequency obtained by the weighted average of the frequency components which are the FFT of the body acceleration component of accelerometer signal in frequency domain.
fBodyAccelerationJerkMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the body linear acceleration component to objain jerk, in frequency domain.
fBodyAccelerationJerkMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the body linear acceleration component to objain jerk, in frequency domain.
fBodyAccelerationJerkMagnitudeMeanFrequency | The mean frequency obtained by the weighted average of the frequency components which are the FFT of the magnitude (using Euclidean norm) of the measurements produced by the body linear acceleration component to objain jerk.
fBodyGyroscopeMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the body component of the gyroscope in frequency domain.
fBodyGyroscopeMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the body component of the gyroscope in frequency domain.
fBodyGyroscopeMagnitudeMeanFrequency | The mean frequency obtained by the weighted average of the frequency components which are the FFT of the body component of the gyroscope.
fBodyGyroscopeJerkMagnitudeMean | The mean of the magnitude (using Euclidean norm) of the measurements produced by the body component of angular velocity gyroscope signal to obtain jerk, in frequency domain (applying FFT).
fBodyGyroscopeJerkMagnitudeStd | The standard deviation of the magnitude (using Euclidean norm) of the measurements produced by the body component of angular velocity gyroscope signal to obtain jerk, in frequency domain (applying FFT)
fBodyGyroscopeJerkMagnitudeMeanFrequency | The mean frequency obtained by the weighted average of the frequency components which are the FFT of the magnitude (using Euclidean norm) of the measurements produced by the body component of angular velocity gyroscope signal to obtain jerk.


All the variables which are broken down into three components along the three axes carry the same defination as defined in the table above. It is just a component of the measured vector value.
For example : tBodyAccelerationMeanX means tBodyAccelerationMean along the x-axis. Hence it is a component of the main vector. Similarly for y & z axis.

### Variable field width and Range of values and Units
* The subject is a number ranging from 1:30. Hence its variable firld width is 2. And range of values is 1:30

* The activity is a character vector with six possible values described in the above table. Hence its variable field width is between minimum and maximum of the activities. Its range of values is 6 character values.

* The rest of the variables were recorded with a very high precision and after applying the transformations the precision was reserved. Hence the field width is same as in the original data i.e 15:16 and range of values is [-1,1], which is the normalized value of the measurements.

#### All the feature variables are unitless as they are normalized values of the actual measurement. That means they are divided by a normalising factor which has the same unit as the measurement itself. This results in the unitless normalized values.

### Transformations applied to the dataset is described in the README.md file and the script in run_analysis.R