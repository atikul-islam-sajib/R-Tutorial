# Create the numerical vector
numerical <- c(1, 2, 3)
numerical

# Create the character vector - approach 01
character <- c("Atikul Islam Sajib", "Msc. in Data Science", "2022 session")
character

# Create the character vector - approach 02
character1 <- c("A", "B", "C", "D")
character1

# Create the sequence vector - approach 01
sequence <- 1:3
sequence

# Create the sequence vector - approach 02
sequence1 <- seq(1, 3, by = 1)
sequence2 <- seq(1, 5, by = 2)

sequence1
sequence2

# Create the logical vector
logical <- c(TRUE, FALSE, TRUE, TRUE)

# Repeat the vector - times arguments
vector1 <- rep(1:5, times = 2)
vector1

# Repeat the vector - each and time arguments together
vector2 <- rep(c(TRUE, FALSE), each = 2, times = 3)
vector2

# Concat the multiple vectors in a one vector
combined <- c(vector1, vector2, sequence1, sequence2)
combined

# Do some mathematical operation of the vector

###################################################################
          # length(): It will return the length #
          # max(): It will return the max value #
          # min(): It will return the min value #
          # sum(): It will return the sum value #
          # mean(): It will return the avg value #
          # median(): It will return the median value #
          # mode(): It will return thr mode value #
          # sd(): It will return the standard deviation #
          # var(): It will return the variance of the value #
          # sort(): It will do the sorting of the vector #
          # reverse(): It will just reverse the vector #
          # unique(): It will return the unique value #
###################################################################
# Find the length of the vector
length(vector1)
# Find the max value of the vector
max(vector1)
# Find the min value of the vector
min(vector1)
# Find the sum of the vector
sum(vector1)
# Find the mean of the vector
mean(vector1)
# Find the median of the vector
median(vector1)
# Find the mode of the vector
mode(vector1)
# Find the standard deviation of the vector
sd(vector1)
# Find the variannce of the vector
var(vector1)
# Do the sorting ascending order
sort(vector1)
# Do the sorting descending order
sort(vector1, decreasing = TRUE)
# Do the reeverse of the vector
rev(vector1)
# Find the unique value of the vector
unique(vector1)

# Do some mathematical operation

###############################################################
      # "+": It will do the sum pointwise or elementwise #
      # "-": It will do the sub pointwise or elementwise #
      # "*": It will do the mul pointwise or elementwise #
      # "/": It will do the div pointwise or elementwise #
###############################################################
# Do the addition pointwise or elementwise
vector1 + vector1
# Do the substraction pointwise or elementwise
vector1 - vector1
# Do the multiplication pointwise and elementwise
vector1 * vector1
# Do the division pointwise and elementwise
vector1 / vector1

# Do some logical operation on top of vector
###############################################################
          # "==": equal operation: Return TRUE/FALSE #
          # "!=": not equal operation: Return TRUE/FALSE #
          # ">": greater than: Return the value #
          # "<": less then: Return the value #
          # "%%": do the logical operation #
###############################################################
vector <- c(1:10, seq(11, 20, by = 1), 21, 22, 23, rep(c(TRUE, FALSE), each = 5, times = 1))
vector
# Find the value which is greater than 10
vector[vector > 10]
# Find the value which is less than 5
vector[vector < 5]
# Find the value which is greater than 5 and less than 20
vector[(vector > 5) & (vector < 20)]
# Find the vector which is greater than 5 or less than 20
vector[(vector > 5) | (vector < 20)]
# Find the value which is equal to 20
vector[vector == 20]
# Find the odd numbers
vector[vector %% 2 != 0]
# Find the even numbers
vector[vector %% 2 !=0]
# Find the sum of the odd and even numbers
sum(vector[(vector %% 2 == 0)]) + sum(vector[(vector %% 2 != 0)])


# Check the datatype of the vector
typeof(logical)
typeof(vector)
typeof(character)

# Check whether they are logical, character and vector or not
is.numeric(vector)
is.character(vector)
is.character(vector)

# Change the logical to the numeric
as.numeric(logical)
# Change the numeric to the character
as.character(vector)
# Change the character to the logical
as.logical(vector)



################################################################################
################################################################################

df <- read.csv(file = "/Users/macbook/Desktop/R-University/GU.csv")
df

# Find the dimension or shape of the dataset
dim(df)
# Find the number of instances of the dataset
nrow(df)
# Find the number of features of the dataset
ncol(df)
# Find the datatype of the features
str(df)
# Find the names of the columnnanme
colnames(df)
# Check there is NaN presence or not
sum(is.na(df))

# Find the absolute value of the DegreeSubject
table(df$DegreeSubject)
# Find the relative frequency of the DegreeSubject
prop.table(table(df$DegreeSubject))
# what if I want to add a column where margins would be presence
addmargins(table(df$DegreeSubject))
addmargins(prop.table(table(df$DegreeSubject)))
# Find the cumulative frequency of absolute value
cumsum(table(df$DegreeSubject))
# Find the cumulative frequency of the relative frequency
cumsum(prop.table(table(df$DegreeSubject)))

# I want to store those frequencies in one table
cbind(
  table(df$DegreeSubject),
  prop.table(table(df$DegreeSubject)),
  cumsum(table(df$DegreeSubject)),
  cumsum(prop.table(table(df$DegreeSubject)))
  
)

# PLot the barplpt of the absolute frequncy
barplot(table(df$DegreeSubject))
# Plot the barplot where designing part would be considered
barplot(
  table(df$DegreeSubject),
  main = "Bar plot for the Degree Subject Feature",
  sub = "Degree Subject",
  ylab = "Frequency"
)
# Draw the histogram for the cumulative relative frequency
hist(
  cumsum(prop.table(table(df$DegreeSubject))),
  main = "Histogram for the Degree subject",
  sub = "X - axis(without any context as I don't know)",
  
)

###############################################################################
# Create a vector where NaN is presence
vector11 <- c(1:10, NaN, NaN, seq(11, 15, by = 1), c(TRUE, FALSE, NaN), NaN, 17:20)
vector11
# Find the total length of the vector
length(vector11)
# Check where the vector contains any NaN value or not
sum(is.na(vector11))
# Total NaN value is = 4, Get the vector without NaN
vector11[!is.na(vector11)]
# Find the length of the vector, it should be 25-4 = 21
length(vector11[!is.na(vector11)])

# As far as I know, with NaN any arithmatic operation is not None
# To do the arithmatic operation use "na.rm = TRUE"
max(vector11, na.rm = TRUE)
min(vector11, na.rm = TRUE)
mean(vector11, na.rm = TRUE)
median(vector11, na.rm = TRUE)
sd(vector11, na.rm = TRUE)
var(vector11, na.rm = TRUE)

# As we know that, we can find the absolute, relative, cumsum with NaN but in
# this case it will not consider NaN but, I also wanted the compiler consider
# the NaN
table(vector11, useNA = "always")
table(vector11, useNA = "ifany")
table(vector11, useNA = "no") # By deafult it is "no"

# Import the dataset and solve the problem
library(carData)
data("Prestige")

# Find the dimension of the dataset or shape of the dataset
dim(Prestige)
# Find the number of rows of the dataset
nrow(Prestige)
# Find the number of columns of the dataset
ncol(Prestige)
# Find the column names of this dataset
colnames(Prestige)
# Find the dataype of the dataset
str(Prestige)

# Check there is NaN or not, and check the quantity
sum(is.na(Prestige))
# I also want to knwo which column it has NaN
sum(is.na(Prestige$education))
sum(is.na(Prestige$income))
sum(is.na(Prestige$women))
sum(is.na(Prestige$prestige))
sum(is.na(Prestige$census))
sum(is.na(Prestige$type))

# Would you find the index of rows where NaN is presence
row.names(Prestige)[which(is.na(Prestige$type) == TRUE)]
# Usage of which
which.max(vector11)
# Usage of which.min()
which.min(vector11) # It will return the min index
# I want to know whether the NaN is presenece
which(is.na(vector11) == TRUE)

# Usage of the Quantile
str(Prestige)
# Find the 0.25 Quantile on top of "income" feature
quantile(Prestige$income, probs = 0.25)
# Find the 0.25 and 0.75 Quantile on top of the "income" feature
quantile(Prestige$income, probs = c(0.25, 0.75))
# Will this handle the NaN ? Answer: Yes: if that feature does not have the NaN
quantile(Prestige$income, probs = 0.25, na.rm = TRUE)
# Find the income which is greater than 0.25 Quantile
Prestige$income[Prestige$income >  quantile(Prestige$income, probs = 0.25)]

# Do the boxplot:
str(Prestige)

# I want to do the boxplot group by of type and prestige
boxplot(
  prestige ~ type,
  data = Prestige,
  varwidth = TRUE
)

# But I want to plot it in a ascending order

Prestige$type <- factor(Prestige$type, levels = c("bc", "wc", "prof"))
boxplot(
  prestige ~ type,
  data = Prestige,
  varwidth = TRUE
)

# Do the indexing of the vector
vector <- c(1, 2, 3, seq(4, 10, by = 1), c(TRUE, FALSE))
vector

# Find the index where the value is 2
which(vector == 2)
# Find the value of index 1, 2, 3
vector[c(1, 2, 3)]
