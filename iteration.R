# Write the for loop
for (value in 1:10){
  print(value)
}
# Use the vector
vec <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
for (value in vec){
  print(value * value)
}

# List in the loop
listVector <- list(name = c("Atikul Islam Sajib", "Tamima Jahan"), department = c("Computer Science", "Data Science"))
listVector

for (value in listVector){
  print(value)
  print(paste("Specified::", value[1]))
}

# matrix in a loop
matrixData <- matrix(data = 1:10, nrow = 2, ncol = 5, byrow = TRUE)
print(matrixData)

evenNumer <- c()

for (row in 1:nrow(matrixData)){
  for (column in 1:ncol(matrixData)){
    if (matrixData[row, column] %% 2 == 0){
      evenNumer <- append(evenNumer, matrixData[row, column])
    }
  }
}

print(sum(evenNumer))

# for for find the prime numbers
value <- 17
flag <- 1

for (index in seq(2, value - 1)){
  if (value %% index == 0){
    flag <- 0
    break
  }else{
    flag == 1
  }
}

if (flag == 0){
  print("The number is not prime")
}else{
  print("The number is prime")
}
