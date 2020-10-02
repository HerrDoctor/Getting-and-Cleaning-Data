# Getting and Cleaning Data - README
### Samuel Vidal Gallego (HerrDoctor)
### 01/10/2020

This file is intended to explain the analysis performed in the 'Getting and Cleaning Data' Course Project for Data Science Specialization at Coursera.


## Data Analysis

Starting from the raw dataset that can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), a tidy data set has been produced following the recipe explained below. The UCI HAR Dataset includes HAR (Human Activity Recognition) data from the smartphones of 30 volunteers. Details about this raw dataset can be found at its readme file (UCI HAR Dataset/README.txt). The resulting tidy dataset has been obtained running the script [run_analysis.R](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/run_analysis.R), which produces a dataframe whose variables and general features are explained in detail in the [CodeBook](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/CodeBook.md).

The recipe to produce the tidy data set has the following **steps**:

1. Download the raw dataset from the Internet and unzip it
2. Get the data containing the training set, training labels and subject labels (for the training set) and merge into a single data frame
3. Get the data containing the test set, test labels and subject labels (for the test set) and merge into a single data frame
4. Merge the dataframes produced at steps 2 and 3 into a single one
5. Extract only those dataset variables on a mean and standard deviation, discard others
6. Give variables (columns) more readable names, according to the criteria explained at the [CodeBook](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/CodeBook.md)
7. Change numeric values of the "ActivityLabel" column by the actual activity names (column class set to factor instead of character)
8. Create groups in dataset based on "SubjectId" and "ActivityLabel", produce a second tidy data set with the average for each variable for each activity and each subject, and write it to the file tidy_data_set.txt

## Files 

#### Files of this repository

* **[README.md](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/CodeBook.md)** | **[README.html](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/README.html)**: This readme file.
* **[CodeBook.md](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/CodeBook.md)** | **[CodeBook.html](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/CodeBook.html)**: Code Book explaining the variables contained in the dataset and its general features.
* [run_analysis.R](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/run_analysis.R): R script you need to run to obtain the tidy dataset.
* [tidy_data_set.txt](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/tidy_data_set.txt): Output of run_analysis.R script: the produced dataframe written in txt format (with the write.table() command).

#### UCI HAR Dataset Files

The UCI HAR Dataset includes the following files:

* **README.txt**: Readme file of the untidy dataset.
* **features_info.txt**: Shows information about the variables used on the data frame.
* **features.txt**: List of all features (variables of the data frame).
* **activity_labels.txt**: Links the class labels with their activity name.
* **train/X_train.txt**: Training set.
* **train/y_train.txt**: Training labels.
* **test/X_test.txt**: Test set.
* **test/y_test.txt**: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

* **train/subject_train.txt**: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* **train/Inertial Signals/total_acc_x_train.txt**: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* **train/Inertial Signals/body_acc_x_train.txt**: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* **train/Inertial Signals/body_gyro_x_train.txt**: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

These are the variables of the UCI HAR Dataset. All the "acceleration" variables are measured in standard gravity units "g" units (m/s^2). All the "angular velocity" units are measured in radians per second (rad/s).


## Notes

* The script [run_analysis.R](https://github.com/HerrDoctor/Getting-and-Cleaning-Data/blob/master/run_analysis.R) makes use of the dplyr package. In case you need, you can install it running:

```
install.packages("dplyr")
```
