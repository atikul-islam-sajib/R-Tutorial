# Install the dependencies
library(dplyr)
library(mdsr)

# Import the lib
install.packages("dplyr")
# install.packages("mdsr")

# Seed is used to make the data is quite stable
set.seed(1234567890)

# Create the data-set
x <- matrix(rnorm(50 * 2), ncol = 2)
x

# Data management for plotting
x[1:25,1] <- x[1:25,1] + 2
x[1:25,2] <- x[1:25,2] - 2

plot(x, pch = 16) # Without asp is used to verify what is happening here
plot(x, pch = 16, asp = 1) # Used asp: reason ->

# Execute the following code one line at a time:
km.out <- kmeans(x, centers = 2, nstart = 1)
km.out

# Find the clusters
km.out$cluster

# All the different elements of the KMeans output
names(km.out) # all the different elements of the KMeans output
km.out$totss # the sum of squares without clustering
km.out$tot.withinss # the sum of squares with this clustering
km.out$withinss # the sum of squares within each cluster
km.out$centers # matrix with the center coordinates


plot(x, col = km.out$cluster, pch = 16, asp = 1) # plot points coloured by cluster
points(km.out$centers, col=1:2, pch=3, cex = 2) # add the cluster centers

# repeat this using 20 repeats
km.out <- kmeans(x, centers = 2, nstart = 20)
km.out

# visualisation
plot(x, col = km.out$cluster, pch = 16, asp = 1)
points(km.out$centers, col=1:2, pch=3, cex = 2)

# stat
km.out$tot.withinss

###############################
#         3 clusters          #
###############################
set.seed(4)
# 3 clusters
km.out <- kmeans(x, centers = 3, nstart = 20)
km.out

plot(x, col = km.out$cluster, pch = 16, asp = 1)

km.out$tot.withinss

###############################
#         4 clusters          #
###############################

# 4 clusters
km.out <- kmeans(x, centers = 4, nstart = 20)
plot(x, col = km.out$cluster, pch = 16, asp = 1)
km.out$tot.withinss

# data generation
x <- matrix(rnorm(50*3), ncol = 2)
x

x[1:25, 1] <- x[1:25, 1] + 2
x[1:25, 2] <- x[1:25, 2] - 2
x[50+1:25, 1] <- x[50 + 1:25, 1] + 2
x[50+1:25, 2] <- x[50 + 1:25, 2] + 2

# clustering
km.out <- kmeans(x, 3, nstart = 20)
km.out

# Visualisation
plot(x, col = km.out$cluster, pch = 16, asp = 1)
points(km.out$centers, col = 1:3, pch = 3, cex = 2) # Center indicated using "+"

##### Clustering City Locations
data("world_cities")





### Exercise 02 

set.seed(135792468)
x <- matrix(rnorm(75*3), ncol = 3)
x[1:25, 1] <- x[1:25, 1] + 5
x[51:75, 2] <- x[51:75, 2] - 6
truth <- rep(1:3, each = 25)
pairs(x, col = truth)


## Plot 3D
plot3d(x, col = truth, size=1, type="s")

km_out <- kmeans(x, centers = 3, nstart = 20)
km_out


plot3d(x, col = km_out$cluster, size = 1, type = "s")
plot3d(km_out$centers, add=TRUE, col = 1:3, type = "s")


biplot(pca_out, xlabs = state.abb)
