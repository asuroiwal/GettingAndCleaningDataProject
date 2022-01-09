# Code book for Coursera *Getting And Cleaning Data* Course Project

This code book describes the data set(tidy_data.txt) and transformations applied to create it. This code book is structured into three sections:
1. [Data](#data): Describes the structure of the data set.
2. [Variables](#variables): Describes the variables in it.
3. [Transformations](#transformations): Describes the transformations applied to the original data set to create this new data set.

## Data <a name="data"></a>

The data set(`tidy_data.txt`) is a text file with values separated by spaces. Its first row contains all the variable's names. The next rows contain values for those variables.

## Variables <a name="variables"></a>

For each subject and activity the file contains 79 averaged signal measurements.

### Identifiers <a name="identifiers"></a>

- `subject`

	Subject identifier, integer, ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average of measurements <a name="average-measurements"></a>

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s???²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s???¹).

Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.

The measurements are classified in two domains:

- Time-domain signals (variables prefixed by `timeDomain`), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals (variables prefixed by `frequencyDomain`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerMeanX_mean`
	- `timeDomainBodyAccelerometerMeanY_mean`
	- `timeDomainBodyAccelerometerMeanZ_mean`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerStandardDeviationX_mean`
	- `timeDomainBodyAccelerometerStandardDeviationY_mean`
	- `timeDomainBodyAccelerometerStandardDeviationZ_mean`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomainGravityAccelerometerMeanX_mean`
	- `timeDomainGravityAccelerometerMeanY_mean`
	- `timeDomainGravityAccelerometerMeanZ_mean`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomainGravityAccelerometerStandardDeviationX_mean`
	- `timeDomainGravityAccelerometerStandardDeviationY_mean`
	- `timeDomainGravityAccelerometerStandardDeviationZ_mean`

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerJerkMeanX_mean`
	- `timeDomainBodyAccelerometerJerkMeanY_mean`
	- `timeDomainBodyAccelerometerJerkMeanZ_mean`

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerJerkStandardDeviationX_mean`
	- `timeDomainBodyAccelerometerJerkStandardDeviationY_mean`
	- `timeDomainBodyAccelerometerJerkStandardDeviationZ_mean`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeMeanX_mean`
	- `timeDomainBodyGyroscopeMeanY_mean`
	- `timeDomainBodyGyroscopeMeanZ_mean`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeStandardDeviationX_mean`
	- `timeDomainBodyGyroscopeStandardDeviationY_mean`
	- `timeDomainBodyGyroscopeStandardDeviationZ_mean`

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeJerkMeanX_mean`
	- `timeDomainBodyGyroscopeJerkMeanY_mean`
	- `timeDomainBodyGyroscopeJerkMeanZ_mean`

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeJerkStandardDeviationX_mean`
	- `timeDomainBodyGyroscopeJerkStandardDeviationY_mean`
	- `timeDomainBodyGyroscopeJerkStandardDeviationZ_mean`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `timeDomainBodyAccelerometerMagnitudeMean_mean`
	- `timeDomainBodyAccelerometerMagnitudeStandardDeviation_mean`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `timeDomainGravityAccelerometerMagnitudeMean_mean`
	- `timeDomainGravityAccelerometerMagnitudeStandardDeviation_mean`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `timeDomainBodyAccelerometerJerkMagnitudeMean_mean`
	- `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation_mean`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `timeDomainBodyGyroscopeMagnitudeMean_mean`
	- `timeDomainBodyGyroscopeMagnitudeStandardDeviation_mean`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `timeDomainBodyGyroscopeJerkMagnitudeMean_mean`
	- `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation_mean`

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerMeanX_mean`
	- `frequencyDomainBodyAccelerometerMeanY_mean`
	- `frequencyDomainBodyAccelerometerMeanZ_mean`

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerStandardDeviationX_mean`
	- `frequencyDomainBodyAccelerometerStandardDeviationY_mean`
	- `frequencyDomainBodyAccelerometerStandardDeviationZ_mean`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerMeanFrequencyX_mean`
	- `frequencyDomainBodyAccelerometerMeanFrequencyY_mean`
	- `frequencyDomainBodyAccelerometerMeanFrequencyZ_mean`

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerkMeanX_mean`
	- `frequencyDomainBodyAccelerometerJerkMeanY_mean`
	- `frequencyDomainBodyAccelerometerJerkMeanZ_mean`

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerkStandardDeviationX_mean`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationY_mean`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationZ_mean`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyX_mean`
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyY_mean`
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ_mean`

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscopeMeanX_mean`
	- `frequencyDomainBodyGyroscopeMeanY_mean`
	- `frequencyDomainBodyGyroscopeMeanZ_mean`

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscopeStandardDeviationX_mean`
	- `frequencyDomainBodyGyroscopeStandardDeviationY_mean`
	- `frequencyDomainBodyGyroscopeStandardDeviationZ_mean`

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscopeMeanFrequencyX_mean`
	- `frequencyDomainBodyGyroscopeMeanFrequencyY_mean`
	- `frequencyDomainBodyGyroscopeMeanFrequencyZ_mean`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- `frequencyDomainBodyAccelerometerMagnitudeMean_mean`
	- `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation_mean`
	- `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency_mean`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `frequencyDomainBodyAccelerometerJerkMagnitudeMean_mean`
	- `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation_mean`
	- `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency_mean`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- `frequencyDomainBodyGyroscopeMagnitudeMean_mean`
	- `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation_mean`
	- `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency_mean`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `frequencyDomainBodyGyroscopeJerkMagnitudeMean_mean`
	- `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation_mean`
	- `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency_mean`

## Transformations <a name="transformations"></a>

The original data set was downloaded [from](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Subsequently, the following transformations were applied to it:

1. The training and test sets were merged to create one data set.
2. The measurements on the mean and standard deviation (i.e. signals containing the strings `mean` and `std`) were extracted for each measurement, and the others were discarded.
3. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see [Identifiers](#identifiers) section).
4. The variable names were replaced with descriptive variable names (e.g. `tBodyAcc-mean()-X` was expanded to `timeDomainBodyAccelerometerMeanX`), using the following set of rules:
	- Special characters (i.e. `(`, `)`, and `-`) were removed
	- The initial `f` and `t` were expanded to `frequencyDomain` and `timeDomain` respectively.
	- `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively.
	- Replaced (supposedly incorrect as per source's `features_info.txt` file) `BodyBody` with `Body`.
  - Finally `_mean` was added to all variable names for the new data set.
5. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script (see `README.md` file for usage instructions).
