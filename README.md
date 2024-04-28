# Student Clustering Analysis

## Overview
This R script performs clustering analysis on student data to identify groups of students with similar engagement and performance levels. It includes dimensionality reduction using Principal Component Analysis (PCA), determination of the optimal number of clusters using the elbow method, clustering using KMeans algorithm, and visualization of the clusters.

## Prerequisites
Make sure you have R installed on your system. You also need to install the following R packages:

- tidyverse
- cluster
- factoextra

You can install these packages using the following commands:
```R
install.packages("tidyverse")
install.packages("cluster")
install.packages("factoextra")
```

## Usage
1. Open the R script file `student_clustering.R`.
2. Load necessary libraries by running the script.
3. Ensure that your data is stored in a data frame named `student_features` with columns `student_engagement` and `student_performance`.
4. Run the script to perform PCA, determine the optimal number of clusters, cluster the data using KMeans, and visualize the clusters.

## Files
- `student_clustering.R`: R script containing the analysis code.
- `README.md` (this file): Provides an overview of the project and instructions for usage.
