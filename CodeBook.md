# Getting and Cleaning data - Code Book
### Samuel Vidal Gallego (HerrDoctor)
### 01/10/2020

## Study Design

This tidy dataset has been produced from the raw dataset stored in "Data/UCI HAR Dataset". It includes HAR (Human Activity Recognition) data from the smartphones of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a Samsung Galaxy S II Smartphone on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz and labelled by hand thanks to video records of the experiments.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 561 features was obtained by calculating statistical variables from the time and frequency domain. The frequency-related variables were calculated through Fast Fourier Transform (FFT). These variables are explained in detail below. 

The raw data set of 561 variables per window was procesed by the file "run_analysis.R", which selects only those features related to the mean and standard deviation of each window, adds two columns indicating the subject (volunteer) and the performed activity, and calculates the average of each variable per each combination of activity and subject (volunteer).


## Code Book

These are the variables of the dataset. All the "acceleration" variables are measured in standard gravity units "g" units (m/s^2). All the "angular velocity" units are measured in radians per second (rad/s).

#### List of variables

* **SubjectId**: Id of the subject. Values between 1 and 30.
* **ActivityLabel**: Activity label. 6 possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* **TimeBodyAccelerometer-Mean-X_Average**: Body total acceleration mean (component X), average per subject and activity.
* **TimeBodyAccelerometer-Mean-Y_Average**: Body total acceleration mean (component Y), average per subject and activity.
* **TimeBodyAccelerometer-Mean-Z_Average**: Body total acceleration mean (component Z), average per subject and activity.
* **TimeBodyAccelerometer-StandardDeviation-X_Average**: Body total acceleration standard deviation (component X), average per subject and activity.
* **TimeBodyAccelerometer-StandardDeviation-Y_Average**: Body total acceleration standard deviation (component Y), average per subject and activity.
* **TimeBodyAccelerometer-StandardDeviation-Z_Average**: Body total acceleration standard deviation (component Z), average per subject and activity.
* **TimeGravityAccelerometer-Mean-X_Average**: Body gravity acceleration mean (component X), average per subject and activity.
* **TimeGravityAccelerometer-Mean-Y_Average**: Body gravity acceleration mean (component Y), average per subject and activity.
* **TimeGravityAccelerometer-Mean-Z_Average**: Body gravity acceleration mean (component Z), average per subject and activity.
* **TimeGravityAccelerometer-StandardDeviation-X_Average**: Body gravity acceleration standard deviation (component X), average per subject and activity.
* **TimeGravityAccelerometer-StandardDeviation-Y_Average**: Body gravity acceleration standard deviation (component Y), average per subject and activity.
* **TimeGravityAccelerometer-StandardDeviation-Z_Average**: Body gravity acceleration standard deviation (component Z), average per subject and activity.
* **TimeBodyAccelerometerJerk-Mean-X_Average**: Body total jerk acceleration mean (component X), average per subject and activity.
* **TimeBodyAccelerometerJerk-Mean-Y_Average**: Body total jerk acceleration mean (component Y), average per subject and activity.
* **TimeBodyAccelerometerJerk-Mean-Z_Average**: Body total jerk acceleration mean (component Z), average per subject and activity.
* **TimeBodyAccelerometerJerk-StandardDeviation-X_Average**: Body total jerk acceleration standard deviation (component X), average per subject and activity.
* **TimeBodyAccelerometerJerk-StandardDeviation-Y_Average**: Body total jerk acceleration standard deviation (component Y), average per subject and activity.
* **TimeBodyAccelerometerJerk-StandardDeviation-Z_Average**: Body total jerk acceleration standard deviation (component Z), average per subject and activity.
* **TimeBodyGyroscope-Mean-X_Average**: Body angular velocity mean (component X), average per subject and activity.
* **TimeBodyGyroscope-Mean-Y_Average**: Body angular velocity mean (component Y), average per subject and activity.
* **TimeBodyGyroscope-Mean-Z_Average**: Body angular velocity mean (component Z), average per subject and activity.
* **TimeBodyGyroscope-StandardDeviation-X_Average**: Body angular velocity standard deviation (component X), average per subject and activity.
* **TimeBodyGyroscope-StandardDeviation-Y_Average**: Body angular velocity standard deviation (component Y), average per subject and activity.
* **TimeBodyGyroscope-StandardDeviation-Z_Average**: Body angular velocity standard deviation (component Z), average per subject and activity.
* **TimeBodyGyroscopeJerk-Mean-X_Average**: Body jerk angular velocity mean (component X), average per subject and activity.
* **TimeBodyGyroscopeJerk-Mean-Y_Average**: Body jerk angular velocity mean (component Y), average per subject and activity.
* **TimeBodyGyroscopeJerk-Mean-Z_Average**: Body jerk angular velocity mean (component Z), average per subject and activity.
* **TimeBodyGyroscopeJerk-StandardDeviation-X_Average**: Body jerk angular velocity standard deviation (component X), average per subject and activity.
* **TimeBodyGyroscopeJerk-StandardDeviation-Y_Average**: Body jerk angular velocity standard deviation (component Y), average per subject and activity.
* **TimeBodyGyroscopeJerk-StandardDeviation-Z_Average**: Body jerk angular velocity standard deviation (component Z), average per subject and activity.
* **TimeBodyAccelerometerMagnitude-Mean_Average**: Body total acceleration mean (magnitude), average per subject and activity.
* **TimeBodyAccelerometerMagnitude-StandardDeviation_Average**: Body total acceleration standard deviation (magnitude), average per subject and activity.
* **TimeGravityAccelerometerMagnitude-Mean_Average**: Body gravity acceleration mean (magnitude), average per subject and activity.
* **TimeGravityAccelerometerMagnitude-StandardDeviation_Average**: Body gravity acceleration standard deviation (magnitude), average per subject and activity.
* **TimeBodyAccelerometerJerkMagnitude-Mean_Average**: Body total jerk acceleration mean (magnitude), average per subject and activity.
* **TimeBodyAccelerometerJerkMagnitude-StandardDeviation_Average**: Body total jerk acceleration standard deviation (magnitude), average per subject and activity.
* **TimeBodyGyroscopeMagnitude-Mean_Average**: Body angular velocity mean (magnitude), average per subject and activity.
* **TimeBodyGyroscopeMagnitude-StandardDeviation_Average**: Body angular velocity standard deviation (magnitude), average per subject and activity.
* **TimeBodyGyroscopeJerkMagnitude-Mean_Average**: Body jerk angular velocity mean (magnitude), average per subject and activity.
* **TimeBodyGyroscopeJerkMagnitude-StandardDeviation_Average**: Body jerk angular velocity standard deviation (magnitude), average per subject and activity.
* **FrequencyBodyAccelerometer-Mean-X_Average**: Mean of Fast Fourier transform (FFT) of body total acceleration  (component X), average per subject and activity.
* **FrequencyBodyAccelerometer-Mean-Y_Average**: Mean of Fast Fourier transform (FFT) of body total acceleration (component Y), average per subject and activity.
* **FrequencyBodyAccelerometer-Mean-Z_Average**: Mean of Fast Fourier transform (FFT) of body total acceleration (component Z), average per subject and activity.
* **FrequencyBodyAccelerometer-StandardDeviation-X_Average**: Standard deviation of Fast Fourier transform (FFT) of body total acceleration (component X), average per subject and activity.
* **FrequencyBodyAccelerometer-StandardDeviation-Y_Average**: Standard deviation of Fast Fourier transform (FFT) of body total acceleration (component Y), average per subject and activity.
* **FrequencyBodyAccelerometer-StandardDeviation-Z_Average**: Standard deviation of Fast Fourier transform (FFT) of body total acceleration (component Z), average per subject and activity.
* **FrequencyBodyAccelerometerJerk-Mean-X_Average**: Mean of Fast Fourier transform (FFT) of body total jerk acceleration (component X), average per subject and activity.
* **FrequencyBodyAccelerometerJerk-Mean-Y_Average**: Mean of Fast Fourier transform (FFT) of body total jerk acceleration (component Y), average per subject and activity.
* **FrequencyBodyAccelerometerJerk-Mean-Z_Average**: Mean of Fast Fourier transform (FFT) of body total jerk acceleration (component Z), average per subject and activity.
* **FrequencyBodyAccelerometerJerk-StandardDeviation-X_Average**: Standard deviation of Fast Fourier transform (FFT) of body total jerk acceleration (component X), average per subject and activity.
* **FrequencyBodyAccelerometerJerk-StandardDeviation-Y_Average**: Standard deviation of Fast Fourier transform (FFT) of body total jerk acceleration (component Y), average per subject and activity.
* **FrequencyBodyAccelerometerJerk-StandardDeviation-Z_Average**: Standard deviation of Fast Fourier transform (FFT) of body total jerk acceleration (component Z), average per subject and activity.
* **FrequencyBodyGyroscope-Mean-X_Average**: Mean of Fast Fourier transform (FFT) of body angular velocity (component X), average per subject and activity.
* **FrequencyBodyGyroscope-Mean-Y_Average**: Mean of Fast Fourier transform (FFT) of body angular velocity (component Y), average per subject and activity.
* **FrequencyBodyGyroscope-Mean-Z_Average**: Mean of Fast Fourier transform (FFT) of body angular velocity (component Z), average per subject and activity.
* **FrequencyBodyGyroscope-StandardDeviation-X_Average**: Standard deviation of Fast Fourier transform (FFT) of body angular velocity (component X), average per subject and activity.
* **FrequencyBodyGyroscope-StandardDeviation-Y_Average**: Standard deviation of Fast Fourier transform (FFT) of body angular velocity (component Y), average per subject and activity.
* **FrequencyBodyGyroscope-StandardDeviation-Z_Average**: Standard deviation of Fast Fourier transform (FFT) of body angular velocity (component Z), average per subject and activity.
* **FrequencyBodyAccelerometerMagnitude-Mean_Average**: Mean of Fast Fourier transform (FFT) of body total acceleration (magnitude), average per subject and activity.
* **FrequencyBodyAccelerometerMagnitude-StandardDeviation_Average**: Standard deviation of Fast Fourier transform (FFT) of body total acceleration (magnitude), average per subject and activity.
* **FrequencyBodyAccelerometerJerkMagnitude-Mean_Average**: Mean of Fast Fourier transform (FFT) of body total jerk acceleration (magnitude), average per subject and activity.
* **FrequencyBodyAccelerometerJerkMagnitude-StandardDeviation_Average**: Standard deviation of Fast Fourier transform (FFT) of body total jerk acceleration (magnitude), average per subject and activity.
* **FrequencyBodyGyroscopeMagnitude-Mean_Average**: Mean of Fast Fourier transform (FFT) of body angular velocity (magnitude), average per subject and activity.
* **FrequencyBodyGyroscopeMagnitude-StandardDeviation_Average**: Standard deviation of Fast Fourier transform (FFT) of body angular velocity (magnitude), average per subject and activity.
* **FrequencyBodyGyroscopeJerkMagnitude-Mean_Average**: Mean of Fast Fourier transform (FFT) of body jerk angular velocity (magnitude), average per subject and activity.
* **FrequencyBodyGyroscopeJerkMagnitude-StandardDeviation_Average**: Standard deviation of Fast Fourier transform (FFT) of body jerk angular velocity (magnitude), average per subject and activity.