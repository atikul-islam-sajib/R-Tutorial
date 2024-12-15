# Create a simple vector using c
vec <- c(1, 2, 3, 4, 5)
print(vec)

# Create the vector using :
vec <- 1:5
print(vec)

# Create the vector using seq
vec <- seq(1, 5, by =1)
print(vec)

# Create the vector as numeric
vec <- c(1.0, 1.1, 2.1)
print(vec)

# Create the vector as integer
vec <- c (1L, 2L, 3L)
print(vec)

# Create the vector as character
vec <- c("A", "B", "C", "R programming")
print(vec)

# Create the vector as logical
vec <- c(TRUE, FALSE, TRUE, FALSE)
print(vec)

# Create the vector as rep
vec <- rep(c(TRUE, FALSE), times = 2)
print(vec)

vec <- rep(c(1, 2, 3), each = 3, times = 2)
print(vec)

vec <- rep(c(10, 20), times = c(2, 5))
print(vec)

# Create a vector and do the accessing
vector <- c(1:5, seq(6, 10), 11, 12, 13, 14, 15)
print(vector)

# I want to access the last and middle element of the vector, together
middleElemnt <- as.integer(length(vector)/2) 
lastElement <- as.integer(length(vector))

print(vector[c(middleElemnt, lastElement)])

# I want to print all the elements that is not even number
notEven <- vector[vector %% 2 != 0]
print(notEven)

# I want to find the elements that is greater than 5 and not less 3
specified <- vector[vector > 3 & vector < 5]
print(specified)

# I want to access the first, third, like all odd index value
oddIndex <- vector[c(seq(1, length(vector), by = 2))]
print(oddIndex)

# adding the elements of the vector
# Want to add 16
vector <- append(vector, 16)
print(vector)
# Want to add 0 in the first index
vector <- append(vector, 0, after = 0)
print(vector)


# Update the value
# I want to update the value of 16 to 160
vector[vector == 16] <- 160
print(vector)

#Remove the vector value which is 160
vector <- vector[-c(length(vector))]
print(vector)

# I want to append another vector (16:20)
vector <- append(vector, 16:20)
print(vector)

# Do the arithmetic operation
print(0 * vector)
print(0:20 + vec)
print(1.1 - vec)
print(0:20 * vec)
print(1:7 / vec)
print(sum(vec))
print(mean(vec))
print(sd(vec))
print(var(vec))
print(sort(vec))
print(sort(vec, decreasing = TRUE))
print(vec ^ 3)
print(sqrt(vec))

# Using a loop
for (value in vector){
  print(value)
}

newVector <- c()
# those are even converts them into odd and vice versa
for (value in vector){
  if (value == 0){
   next 
  }else if (value %% 2 == 0){
    newVector <- append(newVector, value + 1)
  }else{
    newVector <- append(newVector, value - 1)
  }
}
print(newVector)


# add the name in the vector
names(vector) <- seq(1, length(vector))

print(vector)

# Find the 19th value
print(vector[19])
# Find the 21th value
print(vector[21])

# Indexing using logical
length(rep(c(TRUE, FALSE), times = length(vector)/2))

print(vector[c(rep(c(TRUE, FALSE), times = length(vector)/2))])
