# Create a vector
vector <- c(1, 2, 3, 4, 5)
print(vector)
# Create the vector using range (:)
vector <- 1:5
print(vector)
# Create the sequential vector
vector <- seq(1, 5, 1)
print(vector)
# Create the vector sequential and using by = 2
vector <- seq(1, 5, by = 2)
print(vector)
# Create the sequential vector reversed manner
vector <- seq(10, 0, by = -1)
print(vector)
# Create the sequential vector reversed manner by = -2
vector <- seq(9, 0, by = -2)
print(vector)
# Create the numerical vector
vector <- c(1:10)
print(vector)
# Create the integer vector
vector <- c(1L, 2L, 3L, 4L, 5L)
print(vector)
# Create the logical vector
vector <- c(TRUE, FALSE, TRUE)
print(vector)
# Create the vector using rep
vector <- rep(1:5, each = 2, times = 2)
print(vector)
# Create the vector using rep using customised
vector <- rep(c(1, 2), times = c(4, 5))
print(vector)
# Create the string vector
vector <- c("Atikul Islam Sajib", "Tamima Jahan")
print(vector)

# logical operation of the vector
vector <- c(1:3, seq(5, 9, by = 1), c(TRUE, FALSE))
print(vector)
# Now I want to find the value that is greater than 3 and less than 1
print(vector[vector > 1 & vector < 3])
# Find the value that is equal to 5
print(vector[vector == 5])
# Find the value that is not equal to 5 and index
print(vector[(which(vector != 5))])
# Find the value that is divisible by 4
print(vector[vector %% 4 == 0])
# Find the value that is not divisible by 2
print(vector[vector %% 2 != 0])
# Find the value that is greater than 5 and also even number
greaterThanFive <- vector[vector > 5]
print(greaterThanFive[greaterThanFive %% 2 == 0])

# accessing the vector
# I want to access the 2 index
print(vector[2])
# I want to access the value of index 2, 4, 6
print(vector[c(2, 4, 6)])
# I want to access all the odd index value
print(vector[c(seq(1, length(vector), by = 2))])
# I want to access all the even index value
print(vector[c(seq(0, length(vector), by = 2))])
# I want to access all the value that is not even
print(vector[-c(seq(0, length(vector), by = 2))])
# Remove the value that is 1
notOne <- which(vector == 1)
print(vector[-c(notOne)])
# access the data using limit or range
print(vector[4:length(vector)])

# Insert the value
print(vector)
# I want to insert the value 0 in the first index
vector <- append(vector, 0, after = 0)
print(vector)
# I want to insert the value 12, 13 in the last two index
vector <- append(vector, c(12, 13))
print(vector)

# Update the value
# I want to update the value 1, 0 into 10, 11
vector[c(10, 11)] <- c(10, 11)
print(vector)

# Arithmetic operation
print(sum(vector))
print(mean(vector))
print(sd(vector))
print(var(vector))
print(unique(vector))
print(rev(vector))
print(sort(vector))
print(sort(vector, decreasing = TRUE))
print(sqrt(vector))
print(vector ^ 2)

# Is it possible to do the pointwise operation if the vector size is different ? Yes
print(vector * 0)
print(vector * 2:3)
print(vector * vector)
print(vector / c(2, 4))

# Convert the vector
vector <- c(1:10)
# Convert this vector as string 
vector <- as.character(vector)
print(vector)
# Convert the logical vector into the numeric
vector <- rep(c(TRUE, FALSE), times = 2, each = 2)
print(as.numeric(vector))
# Convert the numeric vector to integer
vector <- c(1:10)
print(as.integer(vector))
# Convert the integer vector into the numerical
vector <- c(1L, 2L, 3L)
print(as.integer(vector))