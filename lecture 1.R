# Create the numeric vector
vector1 <- c(1, 2, 3)
vector1

# Create the character vector
vector2 <- ("Atikul Islam Sajib")
vector2

# Create the character vector2
vector3 <- c("Atikul", "Islam", "Sajib")
vector3

# Create the logical vector
vector4 <- c(TRUE, FALSE, TRUE)
vector4

# Create the sequence vector
vector5 <- 1:10
vector5

# Create the sequence vector - 2
vector6 <- seq(1, 10)
vector6

# Create the sequence vector - 3
vector7 <- seq(1, 10, by = 2)
vector7

# Create the rep with vector
vector8 <- rep(vector7, times = 2)
vector8

# Create the rep vector with vector 
vector9 <- rep(vector7, times = 2, each = 5)
vector9


# Create the vector with all

vector <- c(1, 5, 6:10, seq(11, 12), seq(13, 15, by = 1), as.numeric(c(TRUE, FALSE)))
vector

vector[c(length(vector), length(vector) - 1)] <- c(16, 17)
vector

# Doing all arithmatic operation

# Find the length
length(vector)
# Find the max value of the vector
max(vector)
# Find the min value of the vector
min(vector)
# Find the sum of the vector
sum(vector)
# Find the mean or average of the vector
mean(vector)
# Find the median of the vector
median(vector)
# Find the standard deviation of the vector
sd(vector)
# Find the variance of the vector
var(vector)
# Find the sum of the vector
sum(vector)

# Do some logical operation of the vector
vector[vector %% 2== 0]  # Find the even number
vector[vector %% 2 != 0] # Odd number

vector[(vector[vector %% 2 == 0] >= 10) & (vector[vector %% 2 != 0] < 20)]

# Do the logical operation of the vector
vector[(vector > 10) & (vector < 20)]

# Check the datatype of the vector
typeof(vector)

# Change the datatype

vector1 <- rep(c(TRUE, FALSE), times = 3, each = 5)
vector2 <- as.numeric(vector1)

vector2

vector3 <- as.logical(vector1)

vector3

as.character(vector3)
as.numeric(vector3)

# Check whether it is character, number, & logical

logical <- rep(c(TRUE, FALSE), times = 5, each = 2)
is.logical(logical)

number <- c(seq(0, 10, by = 5))
is.numeric(number)

character <- c("A", "B", "C", TRUE, FALSE)

is.character(character)


unique(rep(c(TRUE, FALSE)), times = 10, each = 100)


vector11 <- c(1, 2, 3)

vector11 <- append(vector11, c(4, 5, 6))

vector11

vector11 <- append(vector11, 0, after = 0)
vector11

sort(vector11, decreasing = TRUE)



vector12 <- c(1, 2, 3)
vector13 <- c(4, 5, 6)
vector14 <- c(TRUE, FALSE)

c(vector12, vector13, vector14)

vector12 <- c(1, 2, 3)
vector13 <- c(4, 5, 6)
vector14 <- c(TRUE, FALSE)
vector15 <- c("Atkul Islam Sajib")

c(vector12, vector13, vector14, vector15)


vector1 <- c(1, 2, 3, 120)
vector2 <- c(1, 2, 3, 4)

vector1 %in% vector2

vector1 == vector2