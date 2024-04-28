# Load necessary libraries
library(tidyverse)  # Provides ggplot2 for plotting and other functionalities
library(cluster)    # For KMeans clustering
library(factoextra) # For silhouette analysis (optional)

# Perform dimensionality reduction on the data using princomp
res.pca <- princomp(student_features[, c("student_engagement", "student_performance")])

# Visualize the PCA results using fviz_pca_ind
fviz_pca_ind(res.pca,
             col.ind = "cos2", # Color by the quality of representation
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE)    # Avoid text overlapping

# Rest of the code (elbow method, clustering, visualization, silhouette analysis)
# Plot the elbow method result (unchanged)
plot(1:15, wss, type = "b", xlab = "Number of Clusters", ylab = "Within groups sum of squares",
     main = "Elbow Method for Optimal Number of Clusters")

# Identify the optimal number of clusters based on the elbow plot (replace 3 with chosen value)
optimal_clusters <- 3  # Replace with the elbow point identified from the plot

# Cluster the data using KMeans (change variable names if needed)
set.seed(123)
kmeans_result <- kmeans(student_features[, c("student_engagement", "student_performance")], centers = optimal_clusters)

# Add the cluster results to the data frame
student_features$cluster <- as.factor(kmeans_result$cluster)

# Cluster visualization with alternative method (using geom_point and color aesthetic)
ggplot(student_features, aes(x = student_engagement, y = student_performance, color = cluster)) +
  geom_point(size = 3) +  # Adjust point size as desired
  labs(title = "Clusters of Students",
       x = "Student Engagement",
       y = "Student Performance")




