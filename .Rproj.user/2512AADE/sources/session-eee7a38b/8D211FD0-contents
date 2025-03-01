CodeBook

Overview

This codebook describes the dataset transformations performed to create tidy_data.txt from the Human Activity Recognition (HAR) dataset collected using a Samsung Galaxy S smartphone.

Source Data

The dataset used in this project was obtained from:
UCI Machine Learning Repository

Variables and Data Processing

Raw Data

activity_labels.txt: Maps activity IDs to activity names.

features.txt: Lists all feature names.

train/X_train.txt, test/X_test.txt: Feature data for training and test sets.

train/y_train.txt, test/y_test.txt: Activity labels.

train/subject_train.txt, test/subject_test.txt: Subject IDs.

Processing Steps

Merge Training and Test Data: Combined data from train and test sets.

Extract Mean and Standard Deviation Features: Selected only features with mean() and std().

Assign Descriptive Activity Names: Replaced activity IDs with readable activity names.

Label Data with Descriptive Variable Names: Used names from features.txt.

Create Tidy Dataset: Averaged each variable by subject and activity.

Tidy Data Format

Columns:

subject: Identifier for each subject (1-30).

activity: Activity performed (e.g., Walking, Sitting).

Remaining columns: Mean values of selected features.

Output File

tidy_data.txt: Final cleaned dataset, saved in a space-separated format.

