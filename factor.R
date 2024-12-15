# Create a factor
simpleFactor <- factor(rep(seq(1, 5), times = 3, each = 2))
print(simpleFactor)

# Print the levels
levels(simpleFactor)
# Find the length of the factor
length(simpleFactor)
# Check whether it is a factor or not
is.factor(simpleFactor)

# Accessing the elements
simpleFactor[1]
# Accessing multiple elements
simpleFactor[c(1, 2, 4)]

# Update the elements
simpleFactor[1] <- 5
print(simpleFactor)

# Is it possible to update a value that is not presence in the levels: No
simpleFactor[1] <- 500
print(simpleFactor)
# To do that one please change the levels
simpleFactor <- factor(rep(seq(1, 5), times = 3, each = 2), levels = c(1, 2, 3, 4, 5, 500, 1000, 200))
print(simpleFactor)
# Is it possible to update a value that is not presence in the levels: This time it is possible
simpleFactor[1] <- 500
print(simpleFactor)

# I want to print all the data except 2
simpleFactor1 <- simpleFactor[simpleFactor != 2]
simpleFactor1

# Find the index
indexTwo = which(simpleFactor == 2)
print(simpleFactor[-c(indexTwo)])

