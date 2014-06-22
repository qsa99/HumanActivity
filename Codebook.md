CODEBOOK
============================

## ORIGINAL DATA
Data set was acquired from the UCI Machine Learning Repository  at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The following files were extracted:
*/train/subject_train.txt - List of subjects corresponding to train dataset coded numerically.
*/train/X_train.txt - Measurements for train dataset.
*/train/Y_train.txt - List of activities for train dataset coded numerically.
*/test/subject_test.txt - List of subjects for test dataset coded numerically.
*/X_test.txt - Measurements for test dataset.
*/Y_test.txt - List of activities for test dataset coded numerically.
*activity_labels.txt - List containing descriptions corresponding to activity codes.
*features.txt - List containing descriptions corresponding to measurements.

## TRANSFORMATIONS
* Load in datasets.
* Assign column name Activity to activity codes for train set and for test set.
* Assign column name Subject to subject codes for train set and for test set.
* Assign descriptive names for measurements to train set and to test set.
* Combine together subject, activity and measurments for train set and for test set.
* Combine train set and test set into one set.
* Extract and retain measurements that contain "mean()" or "std()" in the name.
* Replace activity codes with descriptive labels.
* Create a new tidy dataset containing the mean of each measurement grouped by subject and activity.  
* Save data set.

## VARIABLES
1. "Subject" - Subject in study, coded numerically.                        
2. "Activity" - Activity performed by subject associated with subsequent measurements.  Activities include Walking, Walking Upstairs, Waling Downstairs, Sitting, Standing and Laying.                         
3. "tBodyAcc-mean()-X"              
4. "tBodyAcc-mean()-Y"              
5. "tBodyAcc-mean()-Z"              
[6] "tBodyAcc-std()-X"               
[7] "tBodyAcc-std()-Y"               
[8] "tBodyAcc-std()-Z"               
[9] "tGravityAcc-mean()-X"           
[10] "tGravityAcc-mean()-Y"           
[11] "tGravityAcc-mean()-Z"           
[12] "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"            
[14] "tGravityAcc-std()-Z"            
[15] "tBodyAccJerk-mean()-X"          
[16] "tBodyAccJerk-mean()-Y"          
[17] "tBodyAccJerk-mean()-Z"          
[18] "tBodyAccJerk-std()-X"           
[19] "tBodyAccJerk-std()-Y"           
[20] "tBodyAccJerk-std()-Z"           
[21] "tBodyGyro-mean()-X"             
[22] "tBodyGyro-mean()-Y"             
[23] "tBodyGyro-mean()-Z"             
[24] "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"              
[26] "tBodyGyro-std()-Z"              
[27] "tBodyGyroJerk-mean()-X"         
[28] "tBodyGyroJerk-mean()-Y"         
[29] "tBodyGyroJerk-mean()-Z"         
[30] "tBodyGyroJerk-std()-X"          
[31] "tBodyGyroJerk-std()-Y"          
[32] "tBodyGyroJerk-std()-Z"          
[33] "tBodyAccMag-mean()"             
[34] "tBodyAccMag-std()"              
[35] "tGravityAccMag-mean()"          
[36] "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"         
[38] "tBodyAccJerkMag-std()"          
[39] "tBodyGyroMag-mean()"            
[40] "tBodyGyroMag-std()"             
[41] "tBodyGyroJerkMag-mean()"        
[42] "tBodyGyroJerkMag-std()"         
[43] "fBodyAcc-mean()-X"              
[44] "fBodyAcc-mean()-Y"              
[45] "fBodyAcc-mean()-Z"              
[46] "fBodyAcc-std()-X"               
[47] "fBodyAcc-std()-Y"               
[48] "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"          
[50] "fBodyAcc-meanFreq()-Y"          
[51] "fBodyAcc-meanFreq()-Z"          
[52] "fBodyAccJerk-mean()-X"          
[53] "fBodyAccJerk-mean()-Y"          
[54] "fBodyAccJerk-mean()-Z"          
[55] "fBodyAccJerk-std()-X"           
[56] "fBodyAccJerk-std()-Y"           
[57] "fBodyAccJerk-std()-Z"           
[58] "fBodyAccJerk-meanFreq()-X"      
[59] "fBodyAccJerk-meanFreq()-Y"      
[60] "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"             
[62] "fBodyGyro-mean()-Y"             
[63] "fBodyGyro-mean()-Z"             
[64] "fBodyGyro-std()-X"              
[65] "fBodyGyro-std()-Y"              
[66] "fBodyGyro-std()-Z"              
[67] "fBodyGyro-meanFreq()-X"         
[68] "fBodyGyro-meanFreq()-Y"         
[69] "fBodyGyro-meanFreq()-Z"         
[70] "fBodyAccMag-mean()"             
[71] "fBodyAccMag-std()"              
[72] "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"     
[74] "fBodyBodyAccJerkMag-std()"      
[75] "fBodyBodyAccJerkMag-meanFreq()" 
[76] "fBodyBodyGyroMag-mean()"        
[77] "fBodyBodyGyroMag-std()"         
[78] "fBodyBodyGyroMag-meanFreq()"    
[79] "fBodyBodyGyroJerkMag-mean()"    
[80] "fBodyBodyGyroJerkMag-std()"     
[81] "fBodyBodyGyroJerkMag-meanFreq()"
