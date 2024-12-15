# Create the matrix
thisMatrix <- matrix(data = 1:10, nrow = 5, ncol = 2)
thisMatrix

# Find the number of rows
nrow(thisMatrix)
# Find the column of the matrix
ncol(thisMatrix)
# Find the dimension of the matrix
dim(thisMatrix)

# I want to print the the first column
thisMatrix[, 1]
# I want to print the last column
thisMatrix[, -1]
# Print the first row
thisMatrix[1, ]
# Print all the rows one by one
for(row in 1:nrow(thisMatrix)){
  print(thisMatrix[row, ])
}
# Print all the columns using loop
for(col in 1:ncol(thisMatrix)){
  print(thisMatrix[,col])
}

# Find the length of the matrx
length(thisMatrix)

print(thisMatrix)

# Check whether Even value
thisMatrix[thisMatrix %%2 == 0]

# PLace True where it will find the Even number
for(row in 1:nrow(thisMatrix)){
  for(column in 1:ncol(thisMatrix)){
    if (thisMatrix[row, column] %% 2 == 0){
      thisMatrix[row, column] <- TRUE
    } else {
      thisMatrix[row, column] <- FALSE
    }
  }
}

# access the elements
print(thisMatrix[1:3, 2])
print(thisMatrix[c(3, 5), c(1, 2)])
# Update the value
thisMatrix[c(1, 2), ] <- c(-1, -2, -3, -4)
thisMatrix

# Concat the two matrix
matrix1 <- matrix(data = c(1:4), nrow = 2, ncol = 2)
matrix2 <- matrix(data = c(10:14), nrow = 2, ncol = 2)

cat(matrix1, matrix2)
c(matrix1, matrix2)

# If I want to concat with row wise then
rbind(matrix1, matrix2)
# If I want top concat with column wise
newMatrix <- cbind(matrix1, matrix2)

# Apply function
newMatrix

apply(newMatrix, MARGIN = 1, sum)
apply(newMatrix, MARGIN = 2, sum)
apply(newMatrix, MARGIN = c(1, 2), sum)

# mapply
mapply(sum, newMatrix[1, c(1, 2)], newMatrix[2, c(1, 2)])
mapply(sum, list(newMatrix[1, ]), list(newMatrix[2,]))


thisMatrix <- matrix(seq(1:20), nrow = 4, ncol = 5)
thisMatrix
maxValue = 100000
specifiedMin <- function(row1, row2){
  value1 <- max(row1)
  value2 <- max(row2)
  
  return (max(c(value1, value2)))
}

mapply(specifiedMin, list(thisMatrix[2, ]), list(thisMatrix[3, ]))


thisMatrix <- cbind(thisMatrix, c(TRUE, FALSE, TRUE, FALSE))
thisMatrix

tapply(thisMatrix[, 3], thisMatrix[, 6], sum)

# Use the lapply
unlist(lapply(list(thisMatrix[, 3]), sum))

sapply(thisMatrix[, 3], sum)
  