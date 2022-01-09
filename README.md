# Coursera *Getting And Cleaning Data* Course Project
One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.


This repository contains the following files:

- `README.md`, this file, which provides an overview of the project, the data set and how it was created.
- `tidy_data.txt`, which contains the data set.
- `CodeBook.md`, the code book, which describes the contents of the data set (data, variables and transformations used to generate the data).
- `run_analysis.R`, the R script that was used to create the data set

## Data collection <a name="data-collection"></a>

The data used in this project was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The process of data collection(as described on the source site) is as follows:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Creating the tidy data set <a name="creating-data-set"></a>

In this project `run_analysis.R` script creates the final tidy data set by performing the following steps:

- Download and extract the original data set.
- Create a list of variables that are going to be used for analysis(variables with mean and standard deviation were selected).
- Format the required variable names.
- Read and merge the training and testing data sets.(select only the variables needed)
- Assign appropriate labels to the merged data set.
- Convert subject and activity variables to factors(appropriate data type).
- Create a new data set while averaging the extracted variables for each subject and activity.
- Write the new tidy data set to disk(`tidy_data.txt` file).

## Experimentation machine configuration <a name="configuration"></a>

R version: 4.1.2 (2021-11-01)
Platform: x86_64-w64-mingw32/x64 (64-bit)
OS: Windows 10 x64 (build 22000)

For certain operations package dplyr(version: 1.0.7) was used and is necessary.
