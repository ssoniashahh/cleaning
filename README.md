README

Project Overview

This project demonstrates data cleaning and analysis using the Human Activity Recognition (HAR) dataset. The goal is to create a tidy dataset that can be used for further analysis.

Files in the Repository

run_analysis.R: The main script for processing the dataset.

CodeBook.md: Documentation describing variables and transformations.

README.md: This file explaining the project structure.

tidy_data.txt: The final cleaned dataset.

Running the Analysis

Prerequisites

Install R (latest version).

Install necessary R packages:

install.packages("dplyr")

Steps to Run

Download and Extract Data

Place the dataset inside the working directory.

Ensure the folder structure remains as projdata/.

Run the Script

Open R and set the working directory to where run_analysis.R is located.

Execute the script:

source("run_analysis.R")

This will generate tidy_data.txt in the same directory.

Tidy Dataset Output

The tidy_data.txt file contains the average of selected features grouped by subject and activity.

It is stored in a space-separated format and can be read using:

read.table("tidy_data.txt", header = TRUE)

License

This project follows the licensing of the original dataset from the UCI Machine Learning Repository.

