## Make a data frame of the training set in the format:
## subject, activity, features
sub_train = read.csv("./UCI HAR Dataset/train/subject_train.txt",sep="",header=FALSE)
y_train = read.csv("./UCI HAR Dataset/train/y_train.txt",sep="",header=FALSE)
x_train = read.csv("./UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE)
training = cbind(sub_train,y_train,x_train)

## Make a data frame of the test set in the format:
## subject, activity, features
sub_test = read.csv("./UCI HAR Dataset/test/subject_test.txt",sep="",header=FALSE)
y_test = read.csv("./UCI HAR Dataset/test/y_test.txt",sep="",header=FALSE)
x_test = read.csv("./UCI HAR Dataset/test/X_test.txt",sep="",header=FALSE)
testing = cbind(sub_test,y_test,x_test)

## STEP-1 --> Merge training dataset and testing dataset
all_data = rbind(training,testing)

## Name all the variables - subject, activity, tBodyAcc-mean()-X, ...
feature_names = read.csv("./UCI HAR Dataset/features.txt",sep=" ",header=FALSE)
names(all_data) = c("subject","activity",as.character(feature_names[,2]))

## STEP-2 --> Next, create a data.frame with mean and std as features for each measurement.
## Extract the features which are "measurements on the mean and std for each measurement"
features_mean_std = grep("mean|std",feature_names[,2])
data_mean_std = all_data[,c(1,2,features_mean_std+c(2))]

## STEP-3 --> Replace the activity numbers with activity names
## Read the activity_labels from the file.
activity_labels = read.csv("./UCI HAR Dataset/activity_labels.txt",sep=" ",header=FALSE)
## Use the Activity in the data_mean_std as row number in activity_labels and replace
## with appropriately. This is similar to using factor.
data_mean_std$activity = activity_labels[data_mean_std[,2],2]

## STEP-4 --> Descriptive Variable Names.
## Replace (1)"-mean" by "Mean" (2)"-std" by "Std" (3)"()-" by "" and so on...
data_mean_std_var = data_mean_std
names(data_mean_std_var) = gsub("-mean","Mean",names(data_mean_std_var))
names(data_mean_std_var) = gsub("-std","Std",names(data_mean_std_var))
names(data_mean_std_var) = gsub("Acc","Acceleration",names(data_mean_std_var))
names(data_mean_std_var) = gsub("[()-]","",names(data_mean_std_var))
names(data_mean_std_var) = gsub("BodyBody","Body",names(data_mean_std_var))
names(data_mean_std_var) = gsub("Gyro","Gyroscope",names(data_mean_std_var))
names(data_mean_std_var) = gsub("Mag","Magnitude",names(data_mean_std_var))
names(data_mean_std_var) = gsub("Freq|freq","Frequency",names(data_mean_std_var))

## STEP-5 --> Install(if not already) and load the reshape package.
## 1) melt the data_mean_std_var to create a tall skinny dataset. 
## 2) cast the mean function to the molten data. 
## The resulting tidy data has 180 rows. This is because 30 subjects doing 6 activities each.
## The variables have mean of the each variable for each activity and each subject.
library("reshape2")
tidydata_long = melt(data_mean_std_var, id = c("subject", "activity"))
tidydata_wide = dcast(tidydata_long, subject + activity ~ variable, mean)
tidydata = tidydata_wide
write.table(tidydata, "tidydata.txt", sep=" ", row.names = FALSE, quote = FALSE)

