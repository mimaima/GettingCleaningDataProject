The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### assuming that the folder /UCI HAR Dataset was downloaded, unzipped, and stored locally.

All the downloaded files were bounded to each other in Rstudio, a full data set included 563 columns and 10229 rows. 

Fixed some unusual features related to the variable names such as (), -, etc. 

The tidy date set have 180 rows (30 subjects, 6 activities), and 69 columns(subject ID [1-30], activity label ['WALKING', etc], activity ID [1-6], and the 66 mean() and std() features [numeric])
###The Guide for interpreting each variable
* Body: The signals related to the body of subject (individual) who has been examined.
* X, Y, Z: the axis of X, Y and Z (signals can be in the X, Y and Z directions)
* Subject: The numbers between 1 to 30 which are identifiers of the subjects (individuals) who carried out the experiment.
* Activity: including 6 activities performed by subjects (STANDING, SITTING, LAYING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
* mean: Mean value
* std: Standard deviation
