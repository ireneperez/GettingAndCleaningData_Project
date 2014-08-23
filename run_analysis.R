######################################################################################################
#  Read ALL data
######################################################################################################

setwd("~/datasciencecoursera/CleanData/Project/UCI HAR Dataset")

activity_labels <- read.table("activity_labels.txt")

features <- read.table("features.txt")

setwd("~/datasciencecoursera/CleanData/Project/UCI HAR Dataset/test")

subject_test <- read.table("subject_test.txt")

X_test <- read.table("X_test.txt")

y_test <- read.table("y_test.txt")

setwd("~/datasciencecoursera/CleanData/Project/UCI HAR Dataset/train")

subject_train <- read.table("subject_train.txt")

X_train <- read.table("X_train.txt")

y_train <- read.table("y_train.txt")


######################################################################################################
#  1 - Merges the training and the test sets to create one data set.
######################################################################################################

# Feature Details
X <- rbind(X_train,X_test)


######################################################################################################
#  2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
######################################################################################################

columns_mean_std<- grep("[Mm]ean|[Ss][Tt][Dd]", features[,2])

data_mean_sd <- X[columns_mean_std]


######################################################################################################
#  3 - Uses descriptive activity names to name the activities in the data set
######################################################################################################

# Merges the training and the test activity sets to create one data set.
y <- rbind(y_train,y_test)

# Creates column to fill in with the activity name
y["activityname"] <- NA

y$activityname <- activity_labels[match(y$V1, activity_labels$V1),2]


######################################################################################################
#  4 - Appropriately labels the data set with descriptive variable names
######################################################################################################

columns_mean_std<- grep("[Mm]ean|[Ss][Tt][Dd]", features[,2], value=TRUE)

colnames(data_mean_sd) <- columns_mean_std

colnames(data_mean_sd) <- gsub("\\()","",names(data_mean_sd),)

colnames(data_mean_sd) <- gsub("\\),","_",names(data_mean_sd),)

colnames(data_mean_sd) <- gsub("\\(|\\)","",names(data_mean_sd),)


######################################################################################################
#  5 - Creates a second, independent tidy data set with the average of each variable for 
#      each activity and each subject
######################################################################################################

########################################################
# complete the data set to contain Subject and activity
########################################################

# Subject
subject <- rbind(subject_train,subject_test)
colnames(subject) <- "subject"

tidydata1 <- cbind(subject,y[,2])

colnames(tidydata1) <- c("subject","activity")

finaltidydata <- cbind(tidydata1,data_mean_sd)


##############################################################################
# calculate average of each variable for each activity and each subject
##############################################################################

finaltidydata[ order(finaltidydata$activity, finaltidydata$subject), ]

s<- split(finaltidydata,list(finaltidydata$activity, finaltidydata$subject))

x<-sapply(s, function(x) colMeans(x[, names(data_mean_sd)]))

##############################################################################
# traspose the matrix
##############################################################################

trasp <- t(x)

##############################################################################
# creating the new columns with Activity and Subject
##############################################################################

n <- names(trasp[,1])

o <- strsplit(n,"\\.")

firstElement <- function(x){x[1]}
Activity <- sapply(o,firstElement)

secondElement <- function(x){x[2]}
Subject <- sapply(o,secondElement)

TidyData <- cbind(Activity, Subject,trasp)

##############################################################################
# creating the new columns with Activity and Subject
##############################################################################

write.table(TidyData, file="TidyData.txt",row.names=F, col.names=T) 
