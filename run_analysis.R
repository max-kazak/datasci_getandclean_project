# 0. Read data
x_train <- read.table("train//X_train.txt", header = F)
y_train <- read.table("train//y_train.txt", header = F)
subject_train <- read.table("train//subject_train.txt", header = F)

x_test <- read.table("test//X_test.txt", header = F)
y_test <- read.table("test//y_test.txt", header = F)
subject_test <- read.table("test//subject_test.txt", header = F)

features <- read.table("features.txt", header = F, col.names = c("id", "name"))[,2]
act_labels <- read.table("activity_labels.txt", header = F, col.names = c("id", "activity"))

# 1. Merge Training and Test data together
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# 2. Extract mean and standard deviation
varfc <- grep("mean\\(\\)|std\\(\\)", features)

data <- x[,varfc]
names(data) <- features[varfc]

# 3. Add activity names to observations
data$activityid <- y$V1
data <- merge(data,act_labels,by.x="activityid", by.y="id")
data$subject <- subject$V1
data <- data[,!(names(data)=="activityid")]
data$activity <- tolower(data$activity)

# 4. Appropriately labels the data set with descriptive variable names.
renameFeat <- function(name){
    name<-sub("^t","time.",name)
    name<-sub("^f","freq.",name)
    name<-sub("Acc",".accel",name)
    name<-sub("Gyro",".gyro",name)
    name<-sub("Mag",".magn",name)
    name<-sub("Jerk",".jerk",name)
    name<-sub("-mean\\(\\)",".mean",name)
    name<-sub("-std\\(\\)",".sd",name)
    name<-sub("-",".",name)
    tolower(name)
}

names(data) <- renameFeat(names(data))

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy <- aggregate(data,by=list(data$subject,data$activity),FUN=mean,na.rm=T)
tidy <- tidy[,!(names(tidy) %in% c("activity","subject"))]
names(tidy) <- sub("Group.1","subject",names(tidy))
names(tidy) <- sub("Group.2","activity",names(tidy))
tidy <- tidy[order(tidy$subject,tidy$activity),]

# 6. save tidy data
write.table(tidy, file = "tidy.txt", row.names = F)
