The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### How to test
* assuming that the folder "/UCI HAR Dataset" was downloaded, unzipped, and stored locally.
* the file run_analysis.R takes the data from the UCIHAR Dataset and processes it (details below). 
* To run the script , make sure working directory has the file run_analysis.R and the unzipped data folder /UCI HAR Dataset in it. Then source the file run_analysis.R locally.

All the raw data files were bounded to each other in Rstudio,  <strong> a full data set included 563 columns and 10229 rows</strong>. 

Fixed some unusual features related to the variable names such as (), -, etc. 

<strong>The tidy date set have 180 obs. of 68 variables</strong>. That is, 
* 180 rows: 30 subjects, 6 activities,
* columns are including :subject ID [1-30], activity label ['STANDING', etc], activity ID [1-6], and the 66 mean() and std() features [numeric]

###The Guide for interpreting each variable
* <strong>Body</strong>: The signals related to the body of subject (individual) who has been examined.
* <strong>X, Y, Z</strong>: the axis of X, Y and Z (signals can be in the X, Y and Z directions)
* <strong>Subject</strong>: The numbers between 1 to 30 which are identifiers of the subjects (individuals) who carried out the experiment.
* <strong>Activity</strong>: including 6 activities performed by subjects (STANDING, SITTING, LAYING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
* <strong>t </strong>(at the beginning of the variable names): time domain signals
* <strong>f </strong>(at the beginning of the variable names): frequency domain signals
* <strong>mean</strong>: Mean value
* <strong>std</strong>: Standard deviation
* <strong>Acc</strong>: Acceleration signal from the smartphone accelerometer (sensor signal).
* <strong>Gyr</strong>: Angular velocity from the smartphone gyroscope (sensor signal).
* <strong>Body</strong>: The signals related to the body of subject (individual) who has been examined.
* <strong>Jerk</strong>: Jerk signals (the body linear acceleration and angular velocity were derived in time to reach this signal)
* <strong>Mag</strong>: magnitude of the three-dimensional signals calculated using the Euclidean norm
* <strong>Gravity</strong>: The signals related to the gravity.
