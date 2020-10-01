# Getting and Cleaning Data - README
### Samuel Vidal Gallego (HerrDoctor)
### 01/10/2020

Course Project "Getting and Cleaning Data" for Data Science Specialization at Coursera


## Data Analysis

Starting from the raw dataset stored in "Data/UCI HAR Dataset", a tidy data set has been produced. The UCI HAR Dataset includes HAR (Human Activity Recognition) data from the smartphones of 30 volunteers. Details about this untidy dataset can be found at "Data/UCI HAR Dataset/README.txt". The resulting tidy dataset has been obtained running the script "run_analysis.R", which produces a dataframe whose variables are explained in detail at "CodeBook.html". That file also explaines the procedure followed to obtain the tidy data set.


## Files

This dataset includes the following files:

#### UCI HAR Dataset Files

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

#### Tidy Dataset Files

* **CodeBook.md**: Code Book explaining the variables contained in the dataset and how it was produced (R Markdown file).
* **CodeBook.html**: Code Book explaining the variables contained in the dataset and how it was produced (HTML file).
* **README.md**: Readme file (R Markdown file).
* **README.html**: Readme file (HTML file).
* **run_analysis.R**: R script you need to run to obtain the tidy dataset.
* **Output/averages_per_activity_and_subject.txt**: Output of run_analysis.R script: the produced dataframe written in txt format (with the write.table() command).


## Notes

* The script "run_analysis.R" makes use of the dplyr package. In case you need, you can install it running:

```
install.packages("dplyr")
```
