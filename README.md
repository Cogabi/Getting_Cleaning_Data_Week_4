A description of the code in run.analysis.R
===========================================

Loading data sets
=================

The script uses the dplyr library.

The data is read from the text files stored in the working directory into the following variables:

testX - test features  
trainX - training features  
testy - test activities  
trainy - training activities  
testsubject - test subjects  
trainsubject - training subjects  
labels - activity labels (2 columns: activity code and activity name)  
features - features labels (2 columns: index and feature name)

Data processing
===============

The tables testX and trainX are combined into one table X with rbind. The values in the second column of the features table are used to name the columns of the X table.

The tables testy and trainy are combined into one table y with rbind. The columns of the labels table are renamed into "activity_code" and "activity". The activity codes in the table y are matched with the activity names in table labels using inner_join to join the two tables on activity code. The column activity code is then deleted from y keeping only the names in the column "activity".

The tables testsubject and trainsubject are combined into one table subject with rbind. The column of the table subject is named "subject".

Using the grep function and subsetting, every column except those containing the strings "mean()" OR "std()" are removed from X.

The tables subject, y and X are conbined into one table named data with cbind.

A new table tidy_data is created by grouping the data table by subject and activity and summarizing across all the features variables using the mean function. The feature variables are renamed by adding "_average" at the end to indicate the mean values.

The data set is printed into a text file.


