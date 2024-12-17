# Create the factor
simpleFactor <- factor(rep(c("Male", "Female"), times = c(3, 4)))
print(simpleFactor)
# Find the levels
print(levels(simpleFactor))
# Find the length of the factor
print(length(simpleFactor))

# Insert
# We can insert those values that is presence in the levels
simpleFactor[length(simpleFactor) + 1] <- "Male"
print(simpleFactor)
print(length(simpleFactor))
# Is it possible to append a new value that is not presence in the factor ? No,
# To do this, first please explicitly mention the levels 
simpleFactor <- factor(rep(c("Male", "Female"), times = c(3, 4)), levels = c("Male", "Female", "LGBT"))
print(simpleFactor)
# Now, If I want to add the LGBT in the factor then
simpleFactor[c(9, 10, 10)] <- c("LGBT", "Male", "LGBT")
print(simpleFactor)

# Update the value in the index = 8 as Female
simpleFactor[8] <- "Male"
print(simpleFactor)

# Delete
# Remove all the LGBT and print the new factor
indexLGBT <- which(simpleFactor == "LGBT")
simpleFactor <- simpleFactor[-c(indexLGBT)]
print(simpleFactor)

# Accessing the value
# Access the second index
print(simpleFactor[2])
# Access the 2, 4 index
print(simpleFactor[c(2, 4)])
# Access all odd index
oddIndex <- seq(1, length(simpleFactor), by = 2)
print(simpleFactor[c(oddIndex)])
# Access all the even index
oddIndex <- seq(1, length(simpleFactor), by = 2)
print(simpleFactor[-c(oddIndex)])
