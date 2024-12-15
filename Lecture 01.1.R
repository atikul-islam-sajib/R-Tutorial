# Create the numerical vector
numerical.vector <- c(1, 2, 3)
numerical.vector

# Create the character vector
character.vector <- c("Atikul Islam Sajib")
character.vector

# Create the character vector - 01
character.vector1 <- c("Atikul", "Islam", "Sajib")
character.vector1

# Create the logical vector
logical.vector <-c (TRUE, FALSE, TRUE, FALSE, FALSE)
logical.vector

# Create the sequence vector
sequence.vector <- 1:10
sequence.vector

# Create the sequence vector using "seq"
seq(0, 10, by = 1) # By default the step function, which is known as by is = 1
# We can chnage the by value in the sequence vector
seq(1, 10, by = 3)

# Repeat function in the vector

vector1 <- c(c(1, 3), 4:6, seq(7, 10, by = 1))

vector1 <- append(vector1, c(TRUE, FALSE, TRUE, TRUE))

vector1
vector1[c(length(vector1), length(vector1) - 1)]

vector1[c(length(vector1), length(vector1) - 1)] <- c(length(vector1)+ 1, length(vector1)+ 1)
vector1

# Do some mathematical operation
length(vector1)
# Find the unique value from the vector
unique(vector1)
# Find the max value from the vector
max(vector1)
# Find the min value from the vector
min(vector1)
# Find the sum value from the vector
sum(vector1)
# Find the mean or avg value from the vector
mean(vector1)
# Find the median value from the vector
median(vector1)
# Find the mode value from the vector
mode(vector1)
# Find the std from the vector
sd(vector1)
# Find the variance from the vector
var(vector1)


vector1 <- c(1, 2, 3)
vector2 <- c(1, 3, 3)

# Do some mathematical operation

# Do the addition
vector1 + vector2

# Do the substraction operation
vector1 - vector2

# Do the multiplication operation
vector1 * vector2

# Do the division operation
vector1 / vector2

# Check the data type
typeof(vector1)

# Check whether it is logical, numerial, character

is.numeric(vector1)
is.logical(vector1)
is.character(vector1)

# Change the type

as.numeric(vector1)
as.character(vector1)
as.logical(vector1)

# Concat two vector

c(vector1, vector2)

# Sort the vector

sort(c(vector1, vector2), decreasing = FALSE)
sort(c(vector1, vector2), decreasing = TRUE)



# Lecture 02 should be done properly:


df <- read.csv(file = "/Users/macbook/Desktop/R-University/GU.csv")
df

# Check: How many rows, columns in the dataset
nrow(df)
ncol(df)
# Check the dimension or shape of the dataset
dim(df)
# Check the features or columns of the dataset
colnames(df)

# Access the features with the "$" or [""]
# suppose, I want to access the "DegreeSubject" features in this case
df$DegreeSubject

# Find the value counts or it is also known as absolute frequencies
table(df$DegreeSubject)

# Find the proporstional probability or relative frequencies of absolute
prop.table(table(df$DegreeSubject))

# Find the cumsum of the abs frequencies of the dataset
cumsum(table(df$DegreeSubject))

# Find the absolute, 



