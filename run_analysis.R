################################################################################
# Step 0: Load the required library, set the working directory for this script
# and finally download and extract the original data set
################################################################################

library(dplyr)

# Setting the working directory to the project directory
setwd("D:\\DSGS\\Data Science Specialisation\\GettingAndCleaningDataProject")

# Variable to store the downloaded file's name
fileName <- "projectDataset.zip"

# If the data set is not downloaded, download it
if(!file.exists(fileName)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, fileName, method="auto")
}

# If the data set is not extracted, extract it
if(!file.exists("UCI HAR Dataset")){
  unzip(fileName)
}
################################################################################
# Step 1: Extract only the features needed for analysis
################################################################################

# Load activity labels and feature list
activityLabels <- read.table("UCI HAR Dataset\\activity_labels.txt", col.names = c("label", "activity"))
featuresList <- read.table("UCI HAR Dataset\\features.txt", col.names = c("index", "featureName"))

# Extract only the features with mean and standard deviation
neededFeatures <- grep(".*mean,*|.*std.*", featuresList[,2])
neededFeatures.featureName <- featuresList[neededFeatures, 2]

# Format the feature names
neededFeatures.featureName <- gsub("-mean", "Mean", neededFeatures.featureName)
neededFeatures.featureName <- gsub("-std", "SandardDeviation", neededFeatures.featureName)
neededFeatures.featureName <- gsub("^[f]", "frequencyDomain", neededFeatures.featureName)
neededFeatures.featureName <- gsub("^[t]", "timeDomain", neededFeatures.featureName)
neededFeatures.featureName <- gsub("Acc", "Accelerometer", neededFeatures.featureName)
neededFeatures.featureName <- gsub("Gyro", "Gyroscope", neededFeatures.featureName)
neededFeatures.featureName <- gsub("Mag", "Magnitude", neededFeatures.featureName)
neededFeatures.featureName <- gsub("Freq", "Frequency", neededFeatures.featureName)
neededFeatures.featureName <- gsub("[-()]", "", neededFeatures.featureName)
neededFeatures.featureName <- gsub("BodyBody", "Body", neededFeatures.featureName)

################################################################################
# Step 2: Load and merge the training and testing data sets while assigning
# appropriate labels
################################################################################

# Read training and testing datasets and add activities and subjects to them
train <- read.table("UCI HAR Dataset\\train\\X_train.txt")[neededFeatures]
trainActivities <- read.table("UCI HAR Dataset\\train\\Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI HAR Dataset\\test\\X_test.txt")[neededFeatures]
testActivities <- read.table("UCI HAR Dataset\\test\\Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# Merge the two data sets and add labels
dataset <- rbind(train, test)
colnames(dataset) <- c("subject", "activity", neededFeatures.featureName)

# Convert activities and subjects to factors
dataset$activity <- factor(dataset$activity, levels = activityLabels$label, labels = activityLabels$activity)
dataset$subject <- as.factor(dataset$subject)

################################################################################
# Step 3: Create a new tidy data set with mean of needed variables
################################################################################

# Group the data set by subject and activity and calculate the mean across all other columns
avgDataset <- dataset %>%
              group_by(subject, activity) %>%
              summarize(across(where(is.numeric), list(mean=mean)))

# Write the new data set to disk
# output to file "tidy_data.txt"
write.table(avgDataset, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)