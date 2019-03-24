
# Reading and merging the data sets, subjects/volunteers, and labels
x_train <- read.table("train/X_train.txt")
x_test <- read.table("test/X_test.txt")
mydata <- rbind(x_train, x_test)

subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
volunteers <- rbind(subject_train, subject_test)

y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
mylabel <- rbind(y_train, y_test)


# Extracting measurements on mean and standard deviation
features <- read.table("features.txt")
mean_standard <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
mydata <- mydata[, mean_standard]
names(mydata) <- features[mean_standard, 2]
names(mydata) <- gsub("\\(|\\)", "", names(mydata))
names(mydata) <- tolower(names(mydata))

# Add descriptive names to the activities
activities <- read.table("activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
mylabel[,1] = activities[mylabel[,1], 2]
names(mylabel) <- "activity"

# Label the variable names
names(volunteers) <- "subject"
cleaned <- cbind(volunteers, mylabel, mydata)
write.table(cleaned, "merged_clean_data.txt")

# Create an independent tidy dataset
uniqueSubjects = unique(volunteers)[,1]
numSubjects = length(unique(volunteers)[,1])
numActivities = length(activities[,1])
numCols = dim(cleaned)[2]
result = cleaned[1:(numSubjects*numActivities), ]

row = 1
for (s in 1:numSubjects) {
  for (a in 1:numActivities) {
    result[row, 1] = uniqueSubjects[s]
    result[row, 2] = activities[a, 2]
    tmp <- cleaned[cleaned$subject==s & cleaned$activity==activities[a, 2], ]
    result[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
    row = row+1
  }
}
write.csv(result, "ProcessedData.csv")
