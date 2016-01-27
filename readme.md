#Getting and Cleaning Data - Course Project

This repository contains the R script and documentation for the Getting and Cleaning data course project.

The data used for this project come from the [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](Human Activity Recognition Using Smartphones Data Set).

## Files
The codebook (codebook.md) provides information on the different datasets and their variables and can be found in this repository.

The r program, run_analysis.r provides the script for this project.

The list below describes how the script works:

1. First, all of the files from the test and training datasets are read into R separately and then merged to create one dataset.
2. Second, the merged dataset is subsetted to include only the measurements on the mean and standard deviation for each activity and subject.
3. In the next step, the script gives descriptive activity names to name the activities in the data set.
4. The original names on the dataset are not clear, so the script then provides more descriptive lables to the columns.
5. Finally, the dataset is subsetted again to remove the standard deviation measurements to create a new dataset, called tidydata.txt.  This dataset contains the average of each variable for each activity and each subject.