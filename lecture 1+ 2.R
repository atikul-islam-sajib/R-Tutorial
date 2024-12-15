# Create the numberical vectors

numerica_vector <- c(1, 2, 3)
numerica_vector

# Create the character vectors
character_vector <- c("Atikul Islam Sajib", "929199", "3.64")
character_vector

# Create the character vectors - 1
character_vector1 <- c("A", "B", "C", "D")
character_vector1

# Create the logical vector
logical_vector <- c(TRUE, FALSE, TRUE)
logical_vector

# Create the sequnece vector
sequence_vector1 <- 1 : 10
sequence_vector1

# Create the sequence vector - 1
sequence_vector2 <- seq(0, 10, by = 1)
sequence_vector2

# Can I create a vector with all

vector <- c(1, 2, 3, 4, 5: 10, seq(11, 20, by = 1))
vector

# Create the repeat
rep(c(TRUE, TRUE), times = 10, each = 2)

# Do the arithmatic operation
# Do the sum
sum(vector)
max(vector)
min(vector)
mean(vector)
median(vector)
mode(vector)
sd(vector)
var(vector)
length(vector)
sort(vector)
sort(vector, decreasing = TRUE)

# Do the some logical operation

# Find the even numbers
vector[vector %% 2 == 0]

# Find the odd numbers
vector[vector %% 2 != 0]

# Find the data where it will be grater than 15 and less than 20

vector[vector > 15 & vector < 20]

# Accessing the data

vector[1]

# Accessing the data with multiple
vector[c(1, 2, 3, 4, 5)]

# Append the data
append(vector, 21)

# Appped the data in a specific locatiob
append(vector, after = 0, 0)

# Do the some operation

vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)

# do the addition
vector1 + vector2

# Do the substraction
vector1 - vector2

# Do the multiplication
vector1 * vector2

# Do the division 
vector1 / vector2

# Check where it is numberic, logical, character

is.numeric(vector1)
is.character(character_vector)
is.logical(logical_vector)

# Convert the numberic to logical or something else

logical_vector

as.numeric(logical_vector)


# Update the value
vector1[c(1, 2, 3)] <- c(-2, -1, 0)

vector1

# Concat the vectors

c(vector1, vector2)


# Read the dataset

dataset <- read.csv(file = "/Users/macbook/Desktop/R-University/GU.csv")

# Find the shape or dimension of the dataset
dim(dataset)
# Find the number of instances of the dataset
nrow(dataset)
# Find the number of the features of the dataset
ncol(dataset)

# Show the features name
colnames(dataset)

# Show thw datatypes of the dataset
typeof(dataset$Name)
typeof(dataset$DegreeLevel)
typeof(dataset$DegreeSubject)
typeof(dataset$NSiblings)
typeof(dataset$Income)

# Do the absolute frequencies

table(dataset$DegreeSubject)

# Find the realtive frequencies 
prop.table(table(dataset$DegreeSubject))

# Find the cumulative absolute frequencies
cumsum(table(dataset$DegreeSubject))


cbind(table(dataset$DegreeSubject), prop.table(table(dataset$DegreeSubject)), cumsum(table(dataset$DegreeSubject)))


barplot(table(dataset$DegreeSubject))

barplot(table(dataset$DegreeSubject),
        main = "This is the tilee of the barplot",
        sub = "This is the X- axis",
        ylab = "This is the Y-axis"
        )


hist(cumsum(round(prop.table(table(dataset$DegreeSubject)), digits = 3)))

cumsum_value <- cumsum(round(prop.table(table(dataset$DegreeSubject)), digits = 3))



hist(cumsum_value,
     main = "This is the title of the histplot",
     sub = "This is the X-axis",
     ylab = "This is the Y-axis")



# Sample data
data <- c(5, 3, 6, 8, 2) # Replace with your data
cumsum_value <- cumsum(data)

# Plot cumulative sum using a line plot
plot(cumsum_value, 
     type = "s",  # "s" for step plot, "l" for line plot
     main = "This is the title of the cumulative sum plot",
     xlab = "This is the X-axis", 
     ylab = "This is the Y-axis")




data <- c("s", "a", "s", "s", "u", "s", "s", "a", "a", "s",
          "s", "a", "u", "a", "a", "s", "u", "a", "a", "u", "a", "a", "s", "s", "a")



# Find the absolute frequencies

absolute.frequency <- table(data)
absolute.frequency

# Find the relative frequencies

relative.frequency <- prop.table(absolute.frequency)
relative.frequency

# Find the absolute cumulative frequencies

cumulative.frequency <- cumsum(absolute.frequency)
cumulative.frequency

# Find the relative cumulative frequencies
relative.cumulative <- cumsum(relative.frequency)
relative.cumulative

cbind(absolute.frequency, relative.frequency, cumulative.frequency, relative.frequency)


barplot(absolute.frequency)
barplot(relative.frequency)



################################################################################




# Create the numerical vector

numerical <- c(1, 2, 3)
numerical

# Create the character vector
character <- c("Atikukl Islam Sajib", "929199", "Berliner Hochschule Fur Technik")
character

# Create the character vector - 1
character1 <- c("A", "B", "C")
character1

# Create the logical vector 
logical <- c(TRUE, FALSE, TRUE)
logical

# Create the sequence vector
sequence <- 1: 10
sequence

# Create the sequence vector - 1
sequence1 <- seq(1, 10, by = 1)
sequence1

#  Create the sequence vector - 2
sequence2 <- seq(1, 10, by = 2)
sequence2

# Repeat the vector
repeatative <- rep(c(1, 2, 3, as.numeric(c(TRUE, FALSE))), times = 2, each = 2)
repeatative

# Create the vector with all

vec <- c(1:2, 3, 4, 5, seq(6, 10, by = 1), as.numeric(c(TRUE, FALSE))*11, 13, 14, 15)
vec[12] <- c(12)
vec



# Check whether the vector is numeric, logical, character or not
is.vector(vec)
is.character(vec)
is.logical(vec)

# Convert the logical into the numberic
logical <- c(TRUE, FALSE)
as.numeric(logical)

# Convert the numeric into the character
num <- c( 1: 10)
as.character(num)

# Convert the character into the numeric
char <- c("A", "B")
as.numeric(char)

# Do some arithmatic operation 

vec

# Find the length of the vector
length(vec)
# Find the unique value of the vector
unique(vec)
# Find the max value of the vector
max(vec)
# Find the min value of the vector
min(vec)
# Find the summation of the vector
sum(vec)
# Find the mean of the vector
mean(vec)
# Find the median of the vector
median(vec)
# Find the variance of the vector
var(vec)
# Find the standard deviation of the vector
sd(vec)
# Find the mode of the vector
mode(vec)
# Do the sorting operation
sort(vec)
# Do the sorting operation - 1
sort(vec, decreasing = TRUE)
# Do the reverse of the vector
rev(vec)

# do some logical operation of the vector
## Find the even number of the vector
vec[vec %% 2 == 0]
 # Find the odd numbers of the vector
vec[vec %% 2 != 0]
# Find the sum of odd numbers and even numbers
sum(vec[(vec %% 2 == 0) | (vec %% 2 !=0)])
# Find the value which is greater than 5 but not less than 10
vec[(vec > 5) & (vec < 5+5)]
# Find the max 5 number among the vector and do the sum, mean, median, sd, variance
new.vec <- sort(vec, decreasing = TRUE)
top5 <- new.vec[1:5]
# Find the sum
sum(top5)
# Find the mean
mean(top5)
# Find the median
median(top5)
# Find the standard deviation
sd(top5)
# Find the variance
var(top5)
# Find the value which is odd and max
max(vec[vec %% 2 == 0])


#############################################################################

dataframe <- read.csv(file = "/Users/macbook/Desktop/R-University/GU.csv")
dataframe

# Find the dimension or shape of the dataset
dim(dataframe)
# Find the number of rows of the dataset
nrow(dataframe)
# Find the number of columns of the dataset
ncol(dataframe)
# Find the names of the features
colnames(dataframe)
# Find the datatype of the features
typeof(dataframe$Name)
typeof(dataframe$DegreeLevel)
typeof(dataframe$DegreeSubject)
typeof(dataframe$NSiblings)
typeof(dataframe$Income)

# Find the absolute value: which is also known as value counts in "Python"
table(dataframe$DegreeSubject)
# Find the absolute frequency of the table
prop.table(table(dataframe$DegreeSubject))
# Do the round operation
round(prop.table(table(dataframe$DegreeSubject)), digit = 3)
# Find the absolute cumulative frequency
cumsum(table(dataframe$DegreeSubject))
# Find the absoulte relative frequency cumulative frequnecy of the dataset
cumsum(round(prop.table(table(dataframe$DegreeSubject)), digit = 3))

# Place in the one table
cbind(table(dataframe$DegreeSubject),
      prop.table(table(dataframe$DegreeSubject)),
      round(prop.table(table(dataframe$DegreeSubject)), digit = 3),
      cumsum(table(dataframe$DegreeSubject)),
      cumsum(round(prop.table(table(dataframe$DegreeSubject)), digit = 3))
      
      )


# Find the barplot of the vector

barplot(table(dataframe$DegreeSubject))
# Do some cosmetic part in here
barplot(
  table(dataframe$DegreeSubject),
  main = "Bar plot of the degree subject feature",
  sub = "The unique values in the X - axis",
  ylab = "The frequency of the y - axis"
)

prop.table(table(dataframe$DegreeSubject))


# Histtplot
hist(
  dataframe$Income,
  main = "This is the title of the dataset",
  sub = "This is the X-axis",
  ylab = "This is the Y - axis"
  
)

# Exercise: Frequency table
# a. Obtain the four types frequency for the variable number of siblings, in the GCU data
# and present them all in one table.
# b. Obtain a bar chart for the number of siblings.

absolute.frequency <- table(dataframe$NSiblings)
relative.frequency <- prop.table(absolute.frequency)
cumsum.abs.frequency <- cumsum(absolute.frequency)
cumsum.relative.frequency <- cumsum(relative.frequency)

cbind(
  absolute.frequency,
  relative.frequency,
  cumsum.abs.frequency,
  cumsum.relative.frequency
  
)

barplot(
  table(dataframe$NSiblings),
  main = "Bar chat for the number of frequencies",
  sub = "X-axis",
  ylab = "Frequencies"
  )


################################# LECTURE 03 #################################
# Install the package
install.packages("carData")

# Import the lib
library(carData)

# Import the dataset
data(Prestige)

# Check the dimension of the dataset
dim(Prestige)
# Check the number of rows in the dataset
nrow(Prestige)
# Check the number of columns in the dataset
ncol(Prestige)
# Check the names of the features
colnames(Prestige)
# Check the datatype of the dataset
str(Prestige)

# Find the mean, median, sd, var, and quantile of the Income feature
mean(Prestige$income)
median(Prestige$income)
sd(Prestige$income)
var(Prestige$income)
sqrt(Prestige$income)

# To find the quantile
quantile(Prestige$income, probs = c(0.25, 0.75))

# Approximately how many income values would you expect to be less than the lower
#quartile found above? Check your answer using

sum(Prestige$income < quantile(Prestige$income, probs = 0.25))
mean(Prestige$income < quantile(Prestige$income, probs = 0.25))
median(Prestige$income < quantile(Prestige$income, probs = 0.25))

# Find the column names again
colnames(Prestige)

Prestige$census

### Missing values
x <- c(1:5, NA, 10:15, 100)
x

sum(is.na(x))

# I want to print the vector without missing values
x[!is.na(x)]

min(x) # Not work
# To find the mean 
mean(x, na.rm = TRUE)
# To find the min
min(x, na.rm = TRUE)

Prestige$census
unique(Prestige$census)

table(Prestige$type)[1]

table(Prestige$type)[which.max(table(Prestige$type))]

!is.na(Prestige)

table(Prestige$type, useNA = "always")

addmargins(
  table(Prestige$type, useNA = "always")
)

summary(Prestige) # This is quite similar like df.describe() in Python

summary(Prestige)

Prestige$type

row.names(Prestige)

row.names(Prestige, Prestige[is.na(Prestige$type)])

row.names(Prestige)[is.na(Prestige$type)]


#### Revised


colnames(Prestige)

# Find the datatypes of the dataset
str(Prestige)

# Find the 50% and 95% quantile of the census dataset
quantile(Prestige$census, probs = c(0.50,0.95))
# Find the only 70% quantile of the census dataset
quantile(Prestige$census, probs = 0.70)
# Find the how many data points are presence above 0.70ˆ%
sum(quantile(Prestige$census, probs = 0.70) > Prestige$income)

# Check the NaN value

summary(Prestige)

colnames(Prestige)

sum(is.na(Prestige$education))
sum(is.na(Prestige$income))
sum(is.na(Prestige$women))
sum(is.na(Prestige$prestige))
sum(is.na(Prestige$census))
sum(is.na(Prestige$type))

# Now i want to print the mean, median, variance
mean(Prestige$type)
median(Prestige$type)
sd(Prestige$type)
var(Prestige$type)
quantile(Prestige$type, probs = c(0.25, 0.75))

Prestige$type


# So, we should remove the NaN
mean(table(Prestige$type), na.rm = TRUE)
median(table(Prestige$type), na.rm = TRUE)
sd(table(Prestige$type), na.rm = TRUE)
var(table(Prestige$type), na.rm = TRUE)
quantile(table(Prestige$type), probs = 0.25, na.rm = TRUE)


table(Prestige$type, useNA = "always")  
table(Prestige$type, useNA = "ifany")  
table(Prestige$type, useNA = "no")  


is.na(Prestige$type) == TRUE

typeof(is.na(Prestige$type))

      
row.names(Prestige)[which(is.na(Prestige$type) == TRUE)]

head(Prestige)


# Draw the boxplot
boxplot(Prestige ~ type,
        data = Prestige,
        xlab = "job type",
        col = "lightblue")


################################################################################


data <- c(1:10, NaN, NaN, seq(13, 20, by = 1))
data

# Find the total length of the dataset
length(data)
# Find whether dataset consists of NaN value or not
sum(is.na(data))
# Find the which index the NaN value is presence
which(is.na(data) == TRUE)
# Get the data without NaN
data[!is.na(data)]
# Length the data without NaN
length(data[!is.na(data)])

# Is it possible to do the mean, meduian, variance, sd with the NaN
mean(data)
median(data)
sd(data)
var(data)

# Then , remove the NaN then do the mean, median, sd, var
mean(data, na.rm = TRUE)
median(data, na.rm = TRUE)
sd(data, na.rm = TRUE)
var(data, na.rm = TRUE)

# Is it possible to get the absolute frequency, relative frequency etc with NaN
table(data, useNA = "always")
table(data, useNA = "ifany")
table(data, useNA = "no")

# use the addmargins
addmargins(table(data, useNA = "ifany"))

# Find the quantile of data with 0.25, remove NaN
quantile(data, probs = 0.25, na.rm = TRUE)
# Find the quantile of data with 0.25 and 0.75
quantile(data, probs = c(0.25, 0.75), na.rm = TRUE)

# Find the max value of vector with index
which.max(data)

# Use the real dataset for doing this

# Find the length of the dataset
dim(Prestige)
# Find the number of instances of the dataset
nrow(Prestige)
# Find the number of features of the dataset
ncol(Prestige)
# Get the column names of the dataset
colnames(Prestige)
# Find the datatypes of the datase
str(Prestige)

# Find how many NaN values presence in the datset
sum(is.na(Prestige)) # It is determined that there is 4 NaN values presence in the dataset
# I want to know on which column the NaN value is presence
sum(is.na(Prestige$education))
sum(is.na(Prestige$income))
sum(is.na(Prestige$women))
sum(is.na(Prestige$prestige))
sum(is.na(Prestige$census))
sum(is.na(Prestige$type))

# I also intend to know on which index the NaN value id presence
row.names(Prestige)[which(is.na(Prestige$type) == TRUE)]

# Find the feature names
colnames(Prestige)

Prestige$type <- factor(Prestige$type, levels = c("bc", "wc", "prof"))

Prestige$type

boxplot(prestige ~ type,
        data = Prestige,
        xlab = "Job Type",
        col = "lightblue",
        varwidth = TRUE
        )
