#title           :run_analysis.R
#description     :This script reads the UCI raw data then creates a tidy set with descriptive
#                 variable names. A smaller tidy data set with the mean values of each
#                 activity/subject is saved to GaCD_proj_tidy_data.txt in the current directory. 
#author          :kennej3
#date            :2015/09/27
#notes           :The folder 'UCI_HAR_Dataset' should be in a Data folder in the User's 
#                 home directory.

data.path <- '~/Data/UCI_HAR_Dataset/'

# Read in the data
x.train <- read.table(file=paste(data.path,"/train/X_train.txt",sep=""),header=FALSE)
x.test  <- read.table(file=paste(data.path,"/test/X_test.txt",sep=""),header=FALSE)
y.train <- read.table(file=paste(data.path,"/train/y_train.txt",sep=""),header=FALSE)
y.test  <- read.table(file=paste(data.path,"/test/y_test.txt",sep=""),header=FALSE)
subject.train <- read.table(file=paste(data.path,"/train/subject_train.txt",sep=""),header=FALSE)
subject.test  <- read.table(file=paste(data.path,"/test/subject_test.txt",sep=""),header=FALSE)

# Read in the features.
features <- read.table(file=paste(data.path,"features.txt",sep="/"),header=FALSE)
names(x.train) <- features[,2]
names(x.test)  <- features[,2]
names(y.train) <- "activity"
names(y.test)  <- "activity"
names(subject.test)  <- "subject"
names(subject.train) <- "subject"

# Combine the training and test data sets.
x.total.data <- rbind(x.train, x.test)
y.total.data <- rbind(y.train, y.test)
subject.total.data <- rbind(subject.train, subject.test)

# Combine data
merged.data <- cbind(x.total.data, y.total.data, subject.total.data)
merged.data <- merged.data[,grep("mean|std|activity|subject",names(merged.data))]

# Set descriptive variable names.
names(merged.data) <- gsub("^t", "Time", names(merged.data))
names(merged.data) <- gsub("^f", "Frequency", names(merged.data))
names(merged.data) <- gsub("-mean\\(\\)", "Mean", names(merged.data))
names(merged.data) <- gsub("-std\\(\\)", "StandardDeviation", names(merged.data))
names(merged.data) <- gsub("-", "", names(merged.data))
names(merged.data) <- gsub("\\(\\)", "", names(merged.data))
names(merged.data) <- gsub("BodyBody", "Body", names(merged.data))

# Convert activity ID to descriptive name
activities <- c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")
merged.data$activity <- activities[merged.data$activity]

# Create smaller tidy data set with average of each variable for each activity and subject
grouped.data <- group_by(merged.data,activity,subject)
tidy.data <- summarize_each(grouped.data,funs(mean))

# Write smaller tidy data set to a file in the Data directory.
write.table(tidy.data,file='~/Data/GaCD_proj_tidy_data.txt',row.names=FALSE)


