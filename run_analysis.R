library(dplyr)

# Load activity labels and features
activity_labels <- read.table("activity_labels.txt", col.names = c("activity_id", "activity"))
features <- read.table("features.txt", col.names = c("index", "feature_name"))

# Extract only mean and std features
selected_features <- grep("-(mean|std)\\(\\)", features$feature_name)
selected_feature_names <- features$feature_name[selected_features]

# Load training data
x_train <- read.table("train/X_train.txt")[, selected_features]
y_train <- read.table("train/y_train.txt", col.names = "activity_id")
subject_train <- read.table("train/subject_train.txt", col.names = "subject")

# Load test data
x_test <- read.table("test/X_test.txt")[, selected_features]
y_test <- read.table("test/y_test.txt", col.names = "activity_id")
subject_test <- read.table("test/subject_test.txt", col.names = "subject")

# Merge training and test sets
data <- rbind(cbind(subject_train, y_train, x_train), cbind(subject_test, y_test, x_test))

# Assign column names
colnames(data) <- c("subject", "activity_id", selected_feature_names)

# Replace activity_id with descriptive activity names
data <- merge(data, activity_labels, by = "activity_id", all.x = TRUE)
data$activity_id <- NULL # Remove activity_id column

# Create tidy dataset with the average of each variable for each activity and subject
tidy_data <- data %>% 
  group_by(subject, activity) %>% 
  summarise(across(everything(), mean))

# Save tidy data set to a file
write.table(tidy_data, "tidy_data.txt", row.name = FALSE)

