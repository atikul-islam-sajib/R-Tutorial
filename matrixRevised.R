# Create a simple matrix for the numerical data
simpleMatrix <- matrix(1:30, nrow = 5, ncol = 6)
print(simpleMatrix)
# Create the sample matrix using "byrow"
simpleMatrix <- matrix(seq(1, 30, by = 1), nrow = 5, ncol = 6, byrow = TRUE)
print(simpleMatrix)
# Find the number of rows and columns
print(dim(simpleMatrix))
# Find the number of rows of the matrix
print(nrow(simpleMatrix))
# Find the number of columns of the matrix
print(ncol(simpleMatrix))
# Find the length of the matrix
print(length(simpleMatrix))

# Accessing the elements
# Wanna access first rows
print(simpleMatrix[1, ])
# Wanna access the second column
print(simpleMatrix[, 2])
# Wanna access the first row and third column
print(simpleMatrix[1, 3])
# Wanna access the thrid row and first column
print(simpleMatrix[3, 1])
# Wanna access the first, second, third row
print(simpleMatrix[c(1, 2, 3), ])
# Wanna access the first, third columns
print(simpleMatrix[, c(1, 3)])
#wanna access the first, third row and second and last column
print(simpleMatrix[c(1, 3), c(2, ncol(simpleMatrix))])
# Wanna aceess the matrix except first and second row
print(simpleMatrix[-c(1, 2), ])
# Wanna access the matrix except third and last column
print(simpleMatrix[, -c(3, ncol(simpleMatrix))])
# Wanna acess the matrix except first, thrid row and fourth and last column
print(simpleMatrix[-c(1, 3), -c(4, ncol(simpleMatrix))])

# Insert
# Add a new row in the existing matrix
simpleMatrix <- rbind(simpleMatrix, c(31:36))
print(simpleMatrix)
# Add a new column in the existing matrix
simpleMatrix <- cbind(simpleMatrix, seq(7, 42, by = 6))
print(simpleMatrix)
# Find the number of rows and columns
print(dim(simpleMatrix))
# Find the number of rows of the matrix
print(nrow(simpleMatrix))
# Find the number of columns of the matrix
print(ncol(simpleMatrix))
# Find the length of the matrix
print(length(simpleMatrix))

# Update 
# I want to update the whole matrix by 10
simpleMatrix <- simpleMatrix * 10
print(simpleMatrix)
# I want to do the specific operation: update the value 3 number row and 2 number columns as 1000
simpleMatrix[3, 2] <- 1000
print(simpleMatrix)
# Revert the same thing
simpleMatrix[3, 2] <- 140
print(simpleMatrix)

# Delete
# I want to delete the last column
simpleMatrix <- simpleMatrix[, -c(ncol(simpleMatrix))]
print(simpleMatrix)
# I want to delete the last rows
simpleMatrix <- simpleMatrix[-c(nrow(simpleMatrix)), ]
print(simpleMatrix)
# Delete the first and second row and second and third column
simpleMatrix <- simpleMatrix[-c(1, 2), -c(2, 3)]
print(simpleMatrix)

# Arithmetic operation
# Do the row sum
print(rowSums(simpleMatrix))
# Do the column sum 
print(colSums(simpleMatrix))
# Do the row means
print(rowMeans(simpleMatrix))
# Do the column means
print(colMeans(simpleMatrix))
# Do the same thing using apply
# Do the row sum
print(apply(simpleMatrix, 1, sum))
# Do the column sum
print(apply(simpleMatrix, 2, sum))
# Do the row means 
print(apply(simpleMatrix, 1, mean))
# Do the column means
print(apply(simpleMatrix, 2, mean))

# Logical operation
# Find the values that is greater than 200
simpleMatrix[simpleMatrix > 200]
# Find the values that is greater than 100 and less than 200 and find the length as well
print(simpleMatrix[simpleMatrix > 100 & simpleMatrix < 200])
print(length(simpleMatrix[simpleMatrix > 100 & simpleMatrix < 200]))
# Find the value that is even number
print(simpleMatrix[simpleMatrix %% 2 == 0])

# spplay, lappy, mpply used
print(simpleMatrix)
# Wanna print the sum of the second and last third row
print(lapply(simpleMatrix[c(2, 3)], sum))
print(sapply(simpleMatrix[c(2, 3)], sum))
# Wanna find the sum, mean of the first+secod row and columns as well
print(lapply(simpleMatrix[c(1, 2), c(1, 2)], function(values) c(sum = sum(values), mean = mean(values))))
print(sapply(simpleMatrix[c(1, 2), c(1, 2)], function(values) c(sum = sum(values), mean = mean(values))))
# Wanna create a new column based on the 3 and 4th column maximum number
simpleMatrix <- cbind(simpleMatrix, mapply(max, simpleMatrix[, 3], simpleMatrix[, 4]))
print(simpleMatrix)

# naming the column and rows
rownames(simpleMatrix) <- c("A", "B", "C")
colnames(simpleMatrix) <- c("D", "E", "F", "G", "H")
print(simpleMatrix)

# Looping to access the values
for (row in 1:nrow(simpleMatrix)){
  for (column in 1:ncol(simpleMatrix)){
    print(simpleMatrix[row, column])
  }
}
