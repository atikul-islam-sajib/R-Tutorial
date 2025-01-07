# Initialize the data
data <- c(10, 12, 13, 14, 15, 15, 18, 1, 3, 5, 5, 2, 4, 19, 31, 43, 23, 32, 45, 65, 43, 12, 13, 18, 19, 20)

print(data)
print(length(data))

# Sort the dataset
data <- sort(data, decreasing = FALSE)
print(data)

# Find the mean of this dataset
meanValue <- mean(data)
print(meanValue)

# Find the median of this dataset
medianValue <- median(data)
print(medianValue)

# Find the variance of this dataset
varianceValue <- var(data)
print(varianceValue)

# Find the standard deviation of this dataset
sdValue <- sd(data)
print(sdValue)

# Find the 75% quantile of this dataset
quartileValue <- quantile(data, probs = c(0.75))
print(quartileValue)

# Find the boxplot of this dataset
boxplot(data)
