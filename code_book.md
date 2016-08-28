---
title: "Data Science - Getting and Cleaning Data"
author: "Murugesan"
date: "August 28, 2016"
output: html_document
---


## Introduction

This project contains the following two scripts.

* download_data.R

* run_analysis.R

download_data.R script has to be run first and it downloads the data from the remote web site.

run_analysis.R performs the following analysis of the data:

1. Data is read from the txt files and loaded into R.

2. Data is then merged.

3. And,  variables/labels are read from txt files and assigned to  data. These are then renamed with meaningful names.

4. Aggregated value and the generated and ordered.

5. And finally, tiday data set is written into a file.


## Variables


* dataTestActivities - Contains data from Y_test.txt.
* dataTrainActivities - Contains data from Y_train.txt.

* dataTrainSubjects - Contains data from subject_train.txt.
* dataTestSubjects - Contains data from subject_test.txt.  

* dataTestFeatures - Contains data from X_test.txt.  
* dataTrainFeatures - Contains data from X_train.txt.   

* dataSubject - Contains merged data from test and train subjects.   
* dataActivities - Contains merged data from test and train activities.  
* dataFeatures - Contains merged data from test and train features.  

* dataFeaturesNames - Contains features names from features.txt.  

* dataSubAct - Contains merged data from subjects and activities.  
* dataSubActFeatures - Contains merged data from subjects, activities and features.

* subdataFeaturesNames - Contains mean and standard deviation data.  

* selectedNames - Contains latst names data.  

* dataSubActFeatures - Contains subset of merged data from subjects, activities and features.  

* activityLabels - Contains activities labels from activity_labels.txt.  

* dataAggregated - Contains aggregated data.  

* dataOrdered - Contains ordered data.  

* tidydata.txt - This is a text file, which contains the final tidy  data.






