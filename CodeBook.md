Code Book
=========

#Methodology
The original data set was processed to be used in a machine learning application and is split into test and training data. The raw data is spread over multiple files/folders:
* UCI HAR Dataset/activity_labels.txt  (Activity labels)
* UCI HAR Dataset/features.txt (Measurement variable names)
* UCI HAR Dataset/test/X_test.txt (Measurement values test data)
* UCI HAR Dataset/test/y_test.txt (Activity values test data)
* UCI HAR Dataset/test/subject_test.txt (Subject values test data)
* UCI HAR Dataset/train/X_train.txt (Measurement values training data)
* UCI HAR Dataset/train/y_train.txt (Activity values training data)
* UCI HAR Dataset/train/subject_train.txt  (Subject values training data)

The `run_analysis.R` script reads all raw data files mentioned above. The measurement variable names are cleaned up by removing dashes, parentheses, etc.  Camel-casing of variabl names was retained to maintain readability.

The value files are merged to be of form: 
* subject column
* activity label column
* measurement columns

The merged outcomes of the training and the test data are combined into one set. Only measurement columns containing mean, std or meanFreq values are retained.

The resulting set is "reshaped" by subject and activity so that each measurement value column becomes a separate row. The reshaped data is aggregated (averaged) by subject, activity, and measurement label. The resulting data set is cast back from row to column form and exported to file.

All columns in the tidy data set with the exception of Subject and ActivityLabel are the averages of the original data set values.

#Data Dictionary

See original data documentation for measurement units.

Columns in tidy data set:

Tidy Set | Original Data Set
-------- | -----------------
Subject | Subject Id
ActivityLabel | Activity Id
TimeDomainBodyAccMeanX | tBodyAcc-mean()-X
TimeDomainBodyAccMeanY | tBodyAcc-mean()-Y
TimeDomainBodyAccMeanZ | tBodyAcc-mean()-Z
TimeDomainBodyAccStdDevX | tBodyAcc-std()-X
TimeDomainBodyAccStdDevY | tBodyAcc-std()-Y
TimeDomainBodyAccStdDevZ | tBodyAcc-std()-Z
TimeDomainGravityAccMeanX | tGravityAcc-mean()-X
TimeDomainGravityAccMeanY | tGravityAcc-mean()-Y
TimeDomainGravityAccMeanZ | tGravityAcc-mean()-Z
TimeDomainGravityAccStdDevX | tGravityAcc-std()-X
TimeDomainGravityAccStdDevY | tGravityAcc-std()-Y
TimeDomainGravityAccStdDevZ | tGravityAcc-std()-Z
TimeDomainBodyAccJerkMeanX | tBodyAccJerk-mean()-X
TimeDomainBodyAccJerkMeanY | tBodyAccJerk-mean()-Y
TimeDomainBodyAccJerkMeanZ | tBodyAccJerk-mean()-Z
TimeDomainBodyAccJerkStdDevX | tBodyAccJerk-std()-X
TimeDomainBodyAccJerkStdDevY | tBodyAccJerk-std()-Y
TimeDomainBodyAccJerkStdDevZ | tBodyAccJerk-std()-Z
TimeDomainBodyGyroMeanX | tBodyGyro-mean()-X
TimeDomainBodyGyroMeanY | tBodyGyro-mean()-Y
TimeDomainBodyGyroMeanZ | tBodyGyro-mean()-Z
TimeDomainBodyGyroStdDevX | tBodyGyro-std()-X
TimeDomainBodyGyroStdDevY | tBodyGyro-std()-Y
TimeDomainBodyGyroStdDevZ | tBodyGyro-std()-Z
TimeDomainBodyGyroJerkMeanX | tBodyGyroJerk-mean()-X
TimeDomainBodyGyroJerkMeanY | tBodyGyroJerk-mean()-Y
TimeDomainBodyGyroJerkMeanZ | tBodyGyroJerk-mean()-Z
TimeDomainBodyGyroJerkStdDevX | tBodyGyroJerk-std()-X
TimeDomainBodyGyroJerkStdDevY | tBodyGyroJerk-std()-Y
TimeDomainBodyGyroJerkStdDevZ | tBodyGyroJerk-std()-Z
TimeDomainBodyAccMagMean | tBodyAccMag-mean()
TimeDomainBodyAccMagStdDev | tBodyAccMag-std()
TimeDomainGravityAccMagMean | tGravityAccMag-mean()
TimeDomainGravityAccMagStdDev | tGravityAccMag-std()
TimeDomainBodyAccJerkMagMean | tBodyAccJerkMag-mean()
TimeDomainBodyAccJerkMagStdDev | tBodyAccJerkMag-std()
TimeDomainBodyGyroMagMean | tBodyGyroMag-mean()
TimeDomainBodyGyroMagStdDev | tBodyGyroMag-std()
TimeDomainBodyGyroJerkMagMean | tBodyGyroJerkMag-mean()
TimeDomainBodyGyroJerkMagStdDev  | tBodyGyroJerkMag-std()
FreqDomainBodyAccMeanX | fBodyAcc-mean()-X
FreqDomainBodyAccMeanY | fBodyAcc-mean()-Y
FreqDomainBodyAccMeanZ | fBodyAcc-mean()-X
FreqDomainBodyAccStdDevX | fBodyAcc-std()-X
FreqDomainBodyAccStdDevY | fBodyAcc-std()-X
FreqDomainBodyAccStdDevZ | fBodyAcc-std()-Z
FreqDomainBodyAccMeanFreqX | fBodyAcc-meanFreq()-X
FreqDomainBodyAccMeanFreqY | fBodyAcc-meanFreq()-Y
FreqDomainBodyAccMeanFreqZ | fBodyAcc-meanFreq()-Z
FreqDomainBodyAccJerkMeanX | fBodyAccJerk-mean()-X
FreqDomainBodyAccJerkMeanY | fBodyAccJerk-mean()-Y
FreqDomainBodyAccJerkMeanZ | fBodyAccJerk-mean()-Z
FreqDomainBodyAccJerkStdDevX | fBodyAccJerk-std()-X
FreqDomainBodyAccJerkStdDevY | fBodyAccJerk-std()-Y
FreqDomainBodyAccJerkStdDevZ | fBodyAccJerk-std()-Z
FreqDomainBodyAccJerkMeanFreqX | fBodyAccJerk-meanFreq()-X
FreqDomainBodyAccJerkMeanFreqY | fBodyAccJerk-meanFreq()-Y
FreqDomainBodyAccJerkMeanFreqZ | fBodyAccJerk-meanFreq()-Z
FreqDomainBodyGyroMeanX | fBodyGyro-mean()-X
FreqDomainBodyGyroMeanY | fBodyGyro-mean()-Y
FreqDomainBodyGyroMeanZ | fBodyGyro-mean()-Z
FreqDomainBodyGyroStdDevX | fBodyGyro-std()-X
FreqDomainBodyGyroStdDevY | fBodyGyro-std()-Y
FreqDomainBodyGyroStdDevZ | fBodyGyro-std()-Z
FreqDomainBodyGyroMeanFreqX | fBodyGyro-meanFreq()-X
FreqDomainBodyGyroMeanFreqY | fBodyGyro-meanFreq()-Y
FreqDomainBodyGyroMeanFreqZ | fBodyGyro-meanFreq()-Z
FreqDomainBodyAccMagMean | fBodyAccMag-mean()
FreqDomainBodyAccMagStdDev | fBodyAccMag-std()
FreqDomainBodyAccMagMeanFreq | fBodyAccMag-meanFreq()
FreqDomainBodyBodyAccJerkMagMean | fBodyBodyAccJerkMag-mean()
FreqDomainBodyBodyAccJerkMagStdDev | fBodyBodyAccJerkMag-std()
FreqDomainBodyBodyAccJerkMagMeanFreq | fBodyBodyAccJerkMag-meanFreq()
FreqDomainBodyBodyGyroMagMean | fBodyBodyGyroMag-mean()
FreqDomainBodyBodyGyroMagStdDev | fBodyBodyGyroMag-std()
FreqDomainBodyBodyGyroMagMeanFreq | fBodyBodyGyroMag-meanFreq()
FreqDomainBodyBodyGyroJerkMagMean | fBodyBodyGyroJerkMag-mean()
FreqDomainBodyBodyGyroJerkMagStdDev | fBodyBodyGyroJerkMag-std()
FreqDomainBodyBodyGyroJerkMagMeanFreq | fBodyBodyGyroJerkMag-meanFreq()
