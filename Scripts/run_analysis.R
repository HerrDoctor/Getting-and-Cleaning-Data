#Run analysis - Script that process the untidy UCI HAR Dataset and produces a tidy data set for later analysis

#Load the needed libraries
library(dplyr)

#STEP 1: Get the data containing the training set, training labels and subject labels (for the training set) 
#and merge into a single data frame
X_train <- read.table("Data/UCI\ HAR\ Dataset/train/X_train.txt", nrows = 7352)
y_train <- readLines("Data/UCI\ HAR\ Dataset/train/y_train.txt", n = 7352)
subject_train <- readLines("Data/UCI\ HAR\ Dataset/train/subject_train.txt", n = 7352)
#Append y_train and subject_train at the end of X_train
train <- mutate(X_train, ActivityLabel = y_train)
train <- mutate(train, SubjectId = subject_train)

#STEP 2: Get the data containing the test set, test labels and subject labels (for the test set) and merge
#into a single data frame
X_test <- read.table("Data/UCI\ HAR\ Dataset/test/X_test.txt", nrows = 7352)
y_test <- readLines("Data/UCI\ HAR\ Dataset/test/y_test.txt", n = 7352)
subject_test <- readLines("Data/UCI\ HAR\ Dataset/test/subject_test.txt", n = 7352)
#Append y_test and subject_test at the end of X_test
test <- mutate(X_test, ActivityLabel = y_test)
test <- mutate(test, SubjectId = subject_test)

#STEP 3: Join train and test repositories into a single one
dataset <- rbind(train, test)

#STEP 4: Extract only those dataset variables on a mean and standard deviation
#Get the variables
variables <- readLines("Data/UCI\ HAR\ Dataset/features.txt", n = 561)
search_pattern <- "-mean\\(\\)|-std\\(\\)"
dataset <- dataset[grepl(search_pattern, variables)]

#STEP 5: Give variables (columns) appropriate names
#Delete the numbers and space at the beggining of the column names
variable_names <- sub("^[0-9]+ ", "", grep(search_pattern, variables, value=TRUE))
#Delete the parenthesis at the end of the column names
variable_names <- sub("\\(\\)", "", variable_names)
#Making column names more verbous: t->Time, f->Frequency, Acc->Accelerometer, Gyro->Gyroscope, Mag->Magnitude,
#mean->Mean, std-> StandardDeviation
variable_names <- sub("^t", "Time", variable_names)
variable_names <- sub("^f", "Frequency", variable_names)
variable_names <- sub("Acc", "Accelerometer", variable_names)
variable_names <- sub("Gyro", "Gyroscope", variable_names)
variable_names <- sub("Mag", "Magnitude", variable_names)
variable_names <- sub("mean", "Mean", variable_names)
variable_names <- sub("std", "StandardDeviation", variable_names)
names(dataset)[1:length(variable_names)] <- variable_names

#STEP 6: Change numbers in ActivityLabel column by actual activity names (as a factor)
activity_names <- sub("^[0-9]+ ", "", readLines("Data/UCI\ HAR\ Dataset/activity_labels.txt", n = 6))
dataset$ActivityLabel <- factor(dataset$ActivityLabel, labels = activity_names)

#STEP 7: Create groups in dataset based on SubjectId and ActivityLabel, produce a second tidy data set with
#the average for each variable for each activity and each subject and write it to the file Output/tidy_data_set.txt
average_dataset <- dataset %>% group_by(SubjectId, ActivityLabel) %>% summarize_all(mean, na.rm = TRUE)
write.table(average_dataset, file = "Output/averages_per_activity_and_subject.txt", row.names = FALSE)