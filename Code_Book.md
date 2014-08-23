### Code Book for output data created by run_analysis.R
##### Created by Irene Perez

File: TidyData.txt

This file was created from a matrix with 180 rows and 88 columns



        ### Background information about the data content 


This data is the result of phisical tests performed in a group of volunteers.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


Feature Selection 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
... and anothers that are not included in this set of data

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

                              ###  TidyData field names list

names(TidyData[1,])

 [1] "Activity"                           "Subject"                           
 [3] "tBodyAcc-mean-X"                    "tBodyAcc-mean-Y"                   
 [5] "tBodyAcc-mean-Z"                    "tBodyAcc-std-X"                    
 [7] "tBodyAcc-std-Y"                     "tBodyAcc-std-Z"                    
 [9] "tGravityAcc-mean-X"                 "tGravityAcc-mean-Y"                
[11] "tGravityAcc-mean-Z"                 "tGravityAcc-std-X"                 
[13] "tGravityAcc-std-Y"                  "tGravityAcc-std-Z"                 
[15] "tBodyAccJerk-mean-X"                "tBodyAccJerk-mean-Y"               
[17] "tBodyAccJerk-mean-Z"                "tBodyAccJerk-std-X"                
[19] "tBodyAccJerk-std-Y"                 "tBodyAccJerk-std-Z"                
[21] "tBodyGyro-mean-X"                   "tBodyGyro-mean-Y"                  
[23] "tBodyGyro-mean-Z"                   "tBodyGyro-std-X"                   
[25] "tBodyGyro-std-Y"                    "tBodyGyro-std-Z"                   
[27] "tBodyGyroJerk-mean-X"               "tBodyGyroJerk-mean-Y"              
[29] "tBodyGyroJerk-mean-Z"               "tBodyGyroJerk-std-X"               
[31] "tBodyGyroJerk-std-Y"                "tBodyGyroJerk-std-Z"               
[33] "tBodyAccMag-mean"                   "tBodyAccMag-std"                   
[35] "tGravityAccMag-mean"                "tGravityAccMag-std"                
[37] "tBodyAccJerkMag-mean"               "tBodyAccJerkMag-std"               
[39] "tBodyGyroMag-mean"                  "tBodyGyroMag-std"                  
[41] "tBodyGyroJerkMag-mean"              "tBodyGyroJerkMag-std"              
[43] "fBodyAcc-mean-X"                    "fBodyAcc-mean-Y"                   
[45] "fBodyAcc-mean-Z"                    "fBodyAcc-std-X"                    
[47] "fBodyAcc-std-Y"                     "fBodyAcc-std-Z"                    
[49] "fBodyAcc-meanFreq-X"                "fBodyAcc-meanFreq-Y"               
[51] "fBodyAcc-meanFreq-Z"                "fBodyAccJerk-mean-X"               
[53] "fBodyAccJerk-mean-Y"                "fBodyAccJerk-mean-Z"               
[55] "fBodyAccJerk-std-X"                 "fBodyAccJerk-std-Y"                
[57] "fBodyAccJerk-std-Z"                 "fBodyAccJerk-meanFreq-X"           
[59] "fBodyAccJerk-meanFreq-Y"            "fBodyAccJerk-meanFreq-Z"           
[61] "fBodyGyro-mean-X"                   "fBodyGyro-mean-Y"                  
[63] "fBodyGyro-mean-Z"                   "fBodyGyro-std-X"                   
[65] "fBodyGyro-std-Y"                    "fBodyGyro-std-Z"                   
[67] "fBodyGyro-meanFreq-X"               "fBodyGyro-meanFreq-Y"              
[69] "fBodyGyro-meanFreq-Z"               "fBodyAccMag-mean"                  
[71] "fBodyAccMag-std"                    "fBodyAccMag-meanFreq"              
[73] "fBodyBodyAccJerkMag-mean"           "fBodyBodyAccJerkMag-std"           
[75] "fBodyBodyAccJerkMag-meanFreq"       "fBodyBodyGyroMag-mean"             
[77] "fBodyBodyGyroMag-std"               "fBodyBodyGyroMag-meanFreq"         
[79] "fBodyBodyGyroJerkMag-mean"          "fBodyBodyGyroJerkMag-std"          
[81] "fBodyBodyGyroJerkMag-meanFreq"      "angletBodyAccMean,gravity"         
[83] "angletBodyAccJerkMean_gravityMean"  "angletBodyGyroMean,gravityMean"    
[85] "angletBodyGyroJerkMean,gravityMean" "angleX,gravityMean"                
[87] "angleY,gravityMean"                 "angleZ,gravityMean"    


                           ###    TidyData fields description

Activity:  activity performed by the subject 
        Possible values:
         - 1 WALKING
         - 2 WALKING_UPSTAIRS
         - 3 WALKING_DOWNSTAIRS
         - 4 SITTING
         - 5 STANDING
         - 6 LAYING

Subject: id of the volunteer for the test. There were 30 volunteers therefore the posible values for this field are integers from 1 to 30.

tBodyAcc-mean-X and ALL THE OTHER VARIABLES TILL THE END OF THE RECORD: average value for that particular test. Explanation of the different features are in the background info section.


