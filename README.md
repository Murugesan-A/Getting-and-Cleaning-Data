---
title: 'Data Science '
author: "Murugesan"
date: "August 28, 2016"
output: html_document
---


## Getting and Cleaning Data

Getting and Cleaning Data is part of the Data Science course and this document is about the week 4's assigment which is peer graded.

#Peer Graded Assignment - Week 4

* Script - **download_data.R**, has to be run first to download the data set ZIP file. It creates **data** folder if it does not exist. And, deletes the output file(**tidaydata.txt**) 

* Script - **run_analysis.R**, is run to perform the required data analysis by the course project.

* After downloading the data, content of **Y_test.txt** & **Y_train.txt** is read into R.

* Then, content of **subject_train.txt** & **subject_test.txt** is read into R.

* Then, content of **X_test.txt** & **X_train.txt** is read into R.

* Now, Train subjects and test subjects, along with activities and features, are merged.

* Proper variable names are assigned to subject and activities data sets.

* Features data is now loaded into R

* Labels are now extracted for features.

* Subject, activities and features data are merged.

* Activity labels are extracted.

* Meaningful label names to columns are assigned.

* Aggregated values are generated.

* Aggregated values are generated.

* And finally, tidy data set is generated.

