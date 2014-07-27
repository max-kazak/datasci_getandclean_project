#Data Science - Getting and Cleaning Data Project

##Human Activity Recognition Using Smartphones Dataset

These project contains:  
- **run_analysis.R**: script used for data preparation  
- **Codebook.md**: description of all variables of the final data  
- **tidy.txt**: final data  
- **README.md**: reading right now  


Data was provided by Smartlab and downloaded from Coursera web-site: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
Initial data was obtained during SmartLab experiment. The experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity was captured.


This analysis is about preparing data for further researches by making it apply following rules:  
- one column for one variable   
- one row for one observation  
- first row for titles  
- human readaable variables  
- one file for one table  

For data preparation was used **run_analysis.R** script written in R programming language. To use the script the R should be installed and the following command executed in the console: *Rscript run_analysis.R*

It performes the following steps:  

1. Reads data from 
    X_train.txt, X_test.txt for data sets,  
    y_train.txt, y_test.txt for acitvity data,  
    subject_train.txt, subject_test.txt for subject data.  
    And reads information about this data from features.txt and activity_labels.txt
    
2. Merges training and test data together:  
    X_train with X_test  into *x* variable,  
    y_train with y_test into *y* variable,  
    subject_train with subject_test into *subject* variable
    
3. Extract mean and standard deviation variables
    for this particular project only mean and standard deviations are used. According to features.txt and features_info.txt this variables contain names of the *mean()* and *std()* funtions in their names. So this property is used to determine this variables.  
    Also raw names of the variables are added to data frame from features.txt that was read at step 0.

4. Add activity names to observations
    *x* variable is merged with *y* variable which added activity id column to data set forming *data* variable. Then *data* was joined with activity names from *activity_labels* set read from activity_labels.txt at step 0. Also activity id column was removed since its not needed anymore.
    
5. Appropriately labels the data set with descriptive variable names.
    This step transforms hard to read columns labels to human-readable one. For more information on labels see Codebook.md with description of new variables.
    
6. Average of each variable for each activity and each subject.
    Original dataset contains signal measures for every multiple time moments and frequencies. For this research the average of every variable is enough calculated for each activity performed by each subject.  
    So data was grouped by subjects and activities and mean values was calculated for every group.
    
7. Save data
    As the last step data is ordered by subject and activity and written in txt file called *tidy.txt*
    
To read final data from *tidy.txt* R command tidy<-read.table("tidy.txt",header = T) can be used.


