#
# Getting Data Course Project
#

#
# IMPORTANT:
#   Change the working directory path below to match the cloned project path.
#
setwd("~/git/Coursera/DataScience/03_GettingData/Project/")

if (!require("reshape2")) {
  install.packages("reshape2")
}

require("reshape2")

# Load activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Load measurement column names
x_features <- read.table("./UCI HAR Dataset/features.txt")[,2]
# Define column names for activity and subject
y_features <- c("ActivityLabel")
s_features <- c("Subject")

# We need mean, mean freq. and std. dev. columns only
extract_features <- grepl("\\-mean|meanFreq|std\\(\\)", x_features)

# Rename features, i.e. replace mean and std with camel-cased versions
# and remove all instances of "(",")",",", and "-". Also expand the
# time and frequency prefixes.
x_features <- gsub("mean\\(\\)","Mean",x_features)
x_features <- gsub("meanFreq\\(\\)","MeanFreq",x_features)
x_features <- gsub("std\\(\\)","StdDev",x_features)
x_features <- gsub("-|\\(|\\)|,","",x_features)
x_features <- gsub("^t","TimeDomain",x_features)
x_features <- gsub("^f","FreqDomain",x_features)

combineData <- function(x_file, y_file, s_file) {
  # Load data
  x <- read.table(x_file,col.names=x_features)
  y <- read.table(y_file,col.names=y_features)
  s <- read.table(s_file,col.names=s_features)
  
  # Subset by mean & std columns only
  x <- x[,extract_features]

  y[,1] = activity_labels[y[,1]]

  # Return the combined data set
  cbind(s, y, x)
}

test <- combineData("./UCI HAR Dataset/test/X_test.txt", "./UCI HAR Dataset/test/y_test.txt",
            "./UCI HAR Dataset/test/subject_test.txt")

train <- combineData("./UCI HAR Dataset/train/X_train.txt", "./UCI HAR Dataset/train/y_train.txt",
                     "./UCI HAR Dataset/train/subject_train.txt")

# Merge test and train data
melt_data = melt(rbind(test, train), id.vars = c("Subject", "ActivityLabel"))

# Calculate the means for each subject and activity
tidy_data = dcast(melt_data, Subject + ActivityLabel ~ variable, mean)

write.table(tidy_data, file = "./tidy_data_set.txt", row.name=FALSE)

# Clean up. Leaving only tidy_data behind.
rm(list=c("test","train","melt_data", "s_features", "x_features", "y_features", "activity_labels", "extract_features", "combineData"))
