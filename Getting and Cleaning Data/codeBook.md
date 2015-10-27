#Codebook
=================
- subjectID                       : identification of measured subject
- activity                        : measured activities
- tBodyAcc-mean-X                  : description below
- tBodyAcc-mean-Y                  : description below
- tBodyAcc-mean-Z                  : description below
- tGravityAcc-mean-X               : description below
- tGravityAcc-mean-Y               : description below
- tGravityAcc-mean-Z               : description below
- tBodyAccJerk-mean-X              : description below
- tBodyAccJerk-mean-Y              : description below
- tBodyAccJerk-mean-Z              : description below
- tBodyGyro-mean-X                 : description below
- tBodyGyro-mean-Y                 : description below
- tBodyGyro-mean-Z                 : description below
- tBodyGyroJerk-mean-X             : description below
- tBodyGyroJerk-mean-Y             : description below
- tBodyGyroJerk-mean-Z             : description below
- tBodyAccMag-mean                 : description below
- tGravityAccMag-mean              : description below
- tBodyAccJerkMag-mean             : description below
- tBodyGyroMag-mean                : description below
- tBodyGyroJerkMag-mean            : description below
- fBodyAcc-mean-X                  : description below
- fBodyAcc-mean-Y                  : description below
- fBodyAcc-mean-Z                  : description below
- fBodyAcc-meanFreq-X              : description below
- fBodyAcc-meanFreq-Y              : description below
- fBodyAcc-meanFreq-Z              : description below
- fBodyAccJerk-mean-X              : description below
- fBodyAccJerk-mean-Y              : description below
- fBodyAccJerk-mean-Z              : description below
- fBodyAccJerk-meanFreq-X          : description below
- fBodyAccJerk-meanFreq-Y          : description below
- fBodyAccJerk-meanFreq-Z          : description below
- fBodyGyro-mean-X                 : description below
- fBodyGyro-mean-Y                 : description below
- fBodyGyro-mean-Z                 : description below
- fBodyGyro-meanFreq-X             : description below
- fBodyGyro-meanFreq-Y             : description below
- fBodyGyro-meanFreq-Z             : description below
- fBodyAccMag-mean                 : description below
- fBodyAccMag-meanFreq             : description below
- fBodyBodyAccJerkMag-mean         : description below
- fBodyBodyAccJerkMag-meanFreq     : description below
- fBodyBodyGyroMag-mean            : description below
- fBodyBodyGyroMag-meanFreq        : description below
- fBodyBodyGyroJerkMag-mean        : description below
- fBodyBodyGyroJerkMag-meanFreq    : description below
- tBodyAcc-std-X                   : description below
- tBodyAcc-std-Y                   : description below
- tBodyAcc-std-Z                   : description below
- tGravityAcc-std-X                : description below
- tGravityAcc-std-Y                : description below
- tGravityAcc-std-Z                : description below
- tBodyAccJerk-std-X               : description below
- tBodyAccJerk-std-Y               : description below
- tBodyAccJerk-std-Z               : description below
- tBodyGyro-std-X                  : description below
- tBodyGyro-std-Y                  : description below
- tBodyGyro-std-Z                  : description below
- tBodyGyroJerk-std-X              : description below
- tBodyGyroJerk-std-Y              : description below
- tBodyGyroJerk-std-Z              : description below
- tBodyAccMag-std                  : description below
- tGravityAccMag-std               : description below
- tBodyAccJerkMag-std              : description below
- tBodyGyroMag-std                 : description below
- tBodyGyroJerkMag-std             : description below
- fBodyAcc-std-X                   : description below
- fBodyAcc-std-Y                   : description below
- fBodyAcc-std-Z                   : description below
- fBodyAccJerk-std-X               : description below
- fBodyAccJerk-std-Y               : description below
- fBodyAccJerk-std-Z               : description below
- fBodyGyro-std-X                  : description below
- fBodyGyro-std-Y                  : description below
- fBodyGyro-std-Z                  : description below
- fBodyAccMag-std                  : description below
- fBodyBodyAccJerkMag-std          : description below
- fBodyBodyGyroMag-std             : description below
- fBodyBodyGyroJerkMag-std         : description below



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.-

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).-

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).-

These signals were used to estimate variables of the feature vector for each pattern: -
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are:-

- mean(): Mean value
- std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
