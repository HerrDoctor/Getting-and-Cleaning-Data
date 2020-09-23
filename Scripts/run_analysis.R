#Run analysis - Script that process the untidy UCI HAR Dataset and produces a tidy data set for later analysis

#Load the needed libraries
library(dplyr)

#FIRST STEP: Get the data containing the training set, training labels and subject labels (for the training set) 
#and merge into a single data frame
X_train <- read.table("Data/UCI\ HAR\ Dataset/train/X_train.txt", nrows = 7352)
y_train <- readLines("Data/UCI\ HAR\ Dataset/train/y_train.txt", n = 7352)
subject_train <- readLines("Data/UCI\ HAR\ Dataset/train/subject_train.txt", n = 7352)
#Append y_train and subject_train at the end of X_train
train <- mutate(X_train, ActivityLabel = y_train)
train <- mutate(train, SubjectId = subject_train)

#SECOND STEP: Get the data containing the test set, test labels and subject labels (for the test set) and merge
#into a single data frame
X_test <- read.table("Data/UCI\ HAR\ Dataset/test/X_test.txt", nrows = 7352)
y_test <- readLines("Data/UCI\ HAR\ Dataset/test/y_test.txt", n = 7352)
subject_test <- readLines("Data/UCI\ HAR\ Dataset/test/subject_test.txt", n = 7352)
#Append y_test and subject_test at the end of X_test
test <- mutate(X_test, ActivityLabel = y_test)
test <- mutate(test, SubjectId = subject_test)

#THIRD STEP: Join train and test repositories into a single one
dataset <- rbind(train, test)

#FOURTH STEP: Extract only those dataset variables on a mean and standard deviation, and give them appropriate names
#Get the variables
variables <- readLines("Data/UCI\ HAR\ Dataset/features.txt", n = 561)
search_pattern <- "-mean\\(\\)|-std\\(\\)"
variable_names <- sub("^[0-9]+ ", "", grep(search_pattern, variables, value=TRUE))
variable_names <- sub("\\(\\)", "", grep(search_pattern, variable_names, value=TRUE))
dataset <- dataset[grepl(search_pattern, variables)]
names(dataset)[1:(length(dataset)-2)] <- variable_names

#FIFTH STEP: Change numbers in ActivityLabel column by actual activity names (as a factor)
activity_names <- sub("^[0-9]+ ", "", readLines("Data/UCI\ HAR\ Dataset/activity_labels.txt", n = 6))
dataset$ActivityLabel <- factor(dataset$ActivityLabel, labels = activity_names)

#SIXTH STEP: Create groups in dataset based on SubjectId and ActivityLabel, produce a second tidy data set with
#the average for each variable for each activity and each subject and write it to the file Output/tidy_data_set.txt
average_dataset <- dataset %>% group_by(SubjectId, ActivityLabel) %>% summarize_all(mean, na.rm = TRUE)
write.table(average_dataset, file = "Output/averages_per_activity_and_subject.txt", row.names = FALSE)