##README

This repository contains two files:

* a 'run_analysis.R script
* a codebook

The R-script executes the neccessary steps for the course project of the Coursera course 'Getting and Cleaning Data' (see project description on coursera.com in the course files). 

The Codebook describes the output data from the script. The output is a tidy data according to 'tidy' criteria from the 'Getting and Cleaning Data' course.

The R-script run_analysis.R' works on the dataset specified in the course project instructions. This dataset must be downloades and unzipped according to course project instructions.

Please not: for the script to work, the following preparations have to be completed:
To use the script follow the steps:

* Download Human Activity Recognition Using Smartphones dataset
* Extract data
* Set working directory in UCI HAR Dataset folder
* MAKE SURE THATE THE 'data.table' R-package is installed (install.packages("data.table")


The script will create two datasets as output:

* tidyData.txt
* averageData.txt

Both files will be stored in the working directory.

The file CodeBook.md contains descriptions of the variables, the data and any transformations or work that performed to clean up the data.