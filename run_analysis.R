library(dplyr)



path_data_root <- file.path("./data" , "UCI HAR Dataset")



# Read the content of Y_test.txt & Y_train.txt
dataTestActivities  <- read.table(file.path(path_data_root, "test" , "Y_test.txt" ),header = FALSE)
dataTrainActivities <- read.table(file.path(path_data_root, "train", "Y_train.txt"),header = FALSE)

# Read th content of subject_train.txt & subject_test.txt
dataTrainSubjects <- read.table(file.path(path_data_root, "train", "subject_train.txt"),header = FALSE)
dataTestSubjects  <- read.table(file.path(path_data_root, "test" , "subject_test.txt"),header = FALSE)

# Read th content of X_test.txt & X_train.txt
dataTestFeatures  <- read.table(file.path(path_data_root, "test" , "X_test.txt" ),header = FALSE)
dataTrainFeatures <- read.table(file.path(path_data_root, "train", "X_train.txt"),header = FALSE)

#Merge Train subjects and test subjects along with activities and features.
dataSubject <- rbind(dataTrainSubjects, dataTestSubjects)
dataActivities <- rbind(dataTrainActivities, dataTestActivities)
dataFeatures <- rbind(dataTrainFeatures, dataTestFeatures)

#Assign variables to subject and activities data sets.
names(dataSubject)<-c("subject")
names(dataActivities)<- c("activity")

#Read features data into R
dataFeaturesNames <- read.table(file.path(path_data_root, "features.txt"),head=FALSE)
#Extract labels for features.
names(dataFeatures)<- dataFeaturesNames$V2


#Merge subject, activitiesand features.
dataSubAct <- cbind(dataSubject, dataActivities)
dataSubActFeatures <- cbind(dataFeatures, dataSubAct)


subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
dataSubActFeatures<-subset(dataSubActFeatures,select=selectedNames)

#Extract activities labels
activityLabels <- read.table(file.path(path_data_root, "activity_labels.txt"),header = FALSE)

#Assign meaningful label names to columns.
names(dataSubActFeatures)<-gsub("^t", "time", names(dataSubActFeatures))
names(dataSubActFeatures)<-gsub("^f", "frequency", names(dataSubActFeatures))
names(dataSubActFeatures)<-gsub("Acc", "Accelerometer", names(dataSubActFeatures))
names(dataSubActFeatures)<-gsub("Gyro", "Gyroscope", names(dataSubActFeatures))
names(dataSubActFeatures)<-gsub("Mag", "Magnitude", names(dataSubActFeatures))
names(dataSubActFeatures)<-gsub("BodyBody", "Body", names(dataSubActFeatures))

#Generate aggregated values.
dataAggregated<-aggregate(. ~subject + activity, dataSubActFeatures, mean)

#Order aggregated values.
dataOrdered<-dataAggregated[order(dataAggregated$subject,dataAggregated$activity),]

#Generate tidy data set.
write.table(dataOrdered, file = "tidydata.txt",row.name=FALSE)

