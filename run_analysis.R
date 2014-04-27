# Source of data for the project:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# This R script does the following:

# 0. assuming that the folder "/UCI HAR Dataset" was downloaded, unzipped, and stored locally. 
#  check that the current directory contains the desired data file
if(!is.element("UCI HAR Dataset",list.files()))
   print('Cannot find data file.')
# 1. read files in R
Stst <- read.table("UCI HAR Dataset/test/subject_test.txt")
Strn <- read.table("UCI HAR Dataset/train/subject_train.txt")

Xtst<- read.table("UCI HAR Dataset/test/X_test.txt")
Xtrn<- read.table("UCI HAR Dataset/train/X_train.txt")

Ytst<- read.table("UCI HAR Dataset/test/y_test.txt")
Ytrn<- read.table("UCI HAR Dataset/train/y_train.txt")

activities<- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")  

# 2. Merges the training and the test sets to create one data set
X <- rbind(Xtrn, Xtst)
S <- rbind(Strn, Stst)
Y <- rbind(Ytrn, Ytst)

# 3. Extracts only the measurements on the mean and standard deviation for each measurement. 
t_features <- grep("_Mean\\(\\)|_Std\\(\\)", features[, 2])
X <- X[, t_features]
names(X) <- features[t_features, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
#names(X) <- tolower(names(X)) 

# 4. Uses descriptive activity names to name the activities in the data set 
#    and appropriately labels the data set with descriptive activity names.
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
Y[,1] = activities[Y[,1], 2]
names(Y) <- "activity"
names(S) <- "subject"
NewData <- cbind(S, Y, X)  # Got Cleaned Data

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
uniqueSub = unique(S)[,1]
numSub = length(unique(S)[,1])
numAct = length(activities[,1])
numCols = dim(NewData)[2]
final = NewData[1:(numSub*numAct), ]

row = 1
for (i in 1:numSub) {
	for (j in 1:numAct) {
		final[row, 1] = uniqueSub[i]
		final[row, 2] = activities[j, 2]
		tmp <- NewData[NewData$subject==i & NewData$activity==activities[j, 2], ]
		final[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
		row = row+1
	}
}
# 6. Output the result
write.table(final, "TidyDataSet_Average.txt")
