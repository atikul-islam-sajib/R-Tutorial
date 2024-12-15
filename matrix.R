# Create a matrix
simpleMatrix <- matrix(1:15, nrow = 3, ncol = 5, byrow = TRUE)
print(simpleMatrix)

# Accessing the matrix value
# Display the first row
print(simpleMatrix[c(1), ])
# Display the last column
print(simpleMatrix[, c(5)])
# Display the first row, third row and all the columns
print(simpleMatrix[c(1, 3), ])
#Display all the odd columns
print(simpleMatrix[, seq(1, ncol(simpleMatrix)[1], by = 2)])
# Display the value from the row number 2 and column number 5
print(simpleMatrix[c(2), c(5)])
# Display all the even numbers
print(simpleMatrix[simpleMatrix %% 2 == 0])
# Display the value except first row and third columns
print(simpleMatrix[-c(1), -c(5)])
# Display the first, third row and third and fifth column
print(simpleMatrix[c(1, 3), c(3, 5)])
# Find all the row sum
print(apply(simpleMatrix, MARGIN = 1, sum))
# Find all the column sum
print(apply(simpleMatrix, MARGIN = 2, sum))
# Add a new row
simpleMatrix <- rbind(simpleMatrix, c(16:20))
print(simpleMatrix)
# Add a new column
simpleMatrix <- cbind(simpleMatrix, 30:34)
print(simpleMatrix)
# Change the a value of 30 to 300
simpleMatrix[1, 6] <- 300
print(simpleMatrix)

# Use sapply
sapply(list(simpleMatrix[, 3], simpleMatrix[, 4], simpleMatrix[, 5]), sum)

findBigger <- function(value1, value2, value3){
  if (value1 > value2 & value1 > value3){
    return (value1)
  }else if (value2 > value1 & value2 > value3){
    return (value3)
  }else{
    return (value3)
  }
}

result <- mapply(findBigger, simpleMatrix[, 3], simpleMatrix[, 4], simpleMatrix[, 5])
simpleMatrix <- cbind(simpleMatrix, c(result))
print(simpleMatrix)

# Check whether the data exist or not
10 %in% simpleMatrix
# Do some operation: transpose the matrix
#t(simpleMatrix)
# Do the comparison
simpleMatrix[simpleMatrix == 5]
# Find the value which are greater than 10
simpleMatrix[simpleMatrix > 10]

# Do the square for all
computeSquare <- function(value){
  return (value * value)
}

print(apply(simpleMatrix, 2, computeSquare))