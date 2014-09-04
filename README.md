Getting and Cleaning Data Course Project Read Me
======================

#Description
The purpose of this repository is to process the raw files of the *Human Activity Recognition Using Smartphones Dataset* and create a tidy analysis file containing the average values by subject and activity of all mean and standard devation columns. See the *UCI HAR Dataset* folder in the repository for more information about the raw files.

#Files/Folders
* UCI HAR Dataset (contains the raw data)
* run_analysis.R (creates tidy data set file)
* README.md (this file)
* CodeBook.md (code book)

#How to Recreate Tidy Data File
To reproduce the tidy data file:

1. Clone the repository to a local folder
2. Open the `run_analysis.R` in R-Studio
3. Modify the first line of the `run_analysis.R` file to set the working directory to the path of the local folder
4. Execute all commands in the file
5. The script creates the `tidy_data_set.txt` file in the same folder



