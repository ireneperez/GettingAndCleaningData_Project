
### README
###### Created by Irene Perez


This Document is to explain the process created for the project in Getting And Cleaning Data course from Coursera.

The process for the project is into file run_analysis.R attached to this repository.



### run_analysis.R


this R script does the following:

  1 -  Merges the training and the test sets to create one data set.
  
  2 -  Extracts only the measurements on the mean and standard deviation for each measurement. 
  
  3 -  Uses descriptive activity names to name the activities in the data set
  
  4 -  Appropriately labels the data set with descriptive variable names. 
  
  5 -  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 



#### Detailed description of the above points:


0 -> Read ALL data

    Before performing any process this scrip reads the files listed below 
    from ~/datasciencecoursera/CleanData/Project/UCI HAR Dataset

          activity_labels.txt
          features.txt
          /test/subject_test.txt
          /test/X_test.txt
          /test/y_test.txt
          /train/subject_test.txt
          /train/X_test.txt
          /train/y_test.txt


1 -> Merges the training and the test sets to create one data set

    The script binds the data from X_test.txt and X_training.txt files by column 

2 -> Extracts only the measurements on the mean and standard deviation for each measurement. 

    Select all the columns which name contains Mean or Std values using grep


3 -> Uses descriptive activity names to name the activities in the data set

    The script binds the data from y_test.txt and y_training.txt files by row
    Then, maps the codes with the corresponding names


4 -> Appropriately labels the data set with descriptive variable names

    Columns are updated with the corresponding feature removing the unnecessary 
    brackets to make their names tidy



5 -> Creates a second, independent tidy data set with the average of each variable for 
   each activity and each subject



    Completes the data set to contain Subject and activity binding the columns


    Calculate average of each variable for each activity and each subject spliting by those columns
    and applying colmeans function
    
    Transpose the matrix to have a row per activity / subject and columns for all the mean values of thefeatures
    
    Saves the data in txt file


