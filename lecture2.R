


df <- read.csv(file = "/Users/macbook/Desktop/GU.csv")
df

# Check how many rows and columns 
nrow(df)
ncol(df)
dim(df)


# Check which class it is belongs to
class(df)

# Find the columns name of the dataframe
colnames(df)

# Access the Income columns
df["Income"]

# Find the max of the Income and min
max(df["Income"])
min(df["Income"])

colnames(df)


df["DegreeSubject"]

# Find the absolute frequencies of the dataframe
table(df["DegreeSubject"])

# Find the relative frequencies of the dataframe
prop.table(
  table(df$DegreeSubject)
)


round(prop.table(table(df["DegreeSubject"])), digits = 3) * 100


cbind(table(df$DegreeSubject),
      round(
        prop.table(
          table(df$DegreeSubject)
        ), digits = 3) * 100)




df


boolean <- rep(c(TRUE, FALSE), times = 26)
binary <- as.numeric(boolean)

new_df <- cbind(df, boolean, binary)
new_df


table(df$DegreeSubject)

# Find the cumulative frequencies
cumsum_value <- cumsum(table(df$DegreeSubject))
absolute_value <- table(df$DegreeSubject)
relative_value <- prop.table(absolute_value)

cbind(absolute_value, relative_value, cumsum_value)


# Do the same thing ....





df <- read.csv(file = "/Users/macbook/Desktop/GU.csv")
df

# Check how many columns are presence in the dataset
ncol(df)
# Check how many rows are presence in the dataset
nrow(df)
# Determine what is the shape or dimension of the datset
dim(df)

# Find the columns
colnames(df)

# Find the datatype of the df

typeof(df$Name)
typeof(df$DegreeLevel)
typeof(df$DegreeSubject)
typeof(df$NSiblings)
typeof(df$Income)

# Find the unique values of the "DegreeSubject"
unique(df$DegreeSubject)
unique(df$DegreeLevel)

# Find the absolute frequencies - which is nothing but value_counts() in the python
absFrequencies <- table(df$DegreeSubject)
absFrequencies

# Find the relative frequencies of the "DegreeSubject", which is also known as prob.
realtiveFrequencies <- prop.table(table(df$DegreeSubject))
realtiveFrequencies

# Cumulative frequencies of the "DegreeSubject"
cumsumFrequencies <- cumsum(absFrequencies)
cumsumFrequencies


cbind(absFrequencies, cumsumFrequencies, realtiveFrequencies)


# Find the barplot of DegreeSubject
# main(STRING): It is the title of the plot
# sub(STRING): X-axis
# ylabe(STRING): y-axis
# col(vector): It will change the color

barplot(table(df$DegreeSubject),
        main = "26 Gotham City Uni Students",
        sub="Degree Subject",
        ylab="Frequency",
        col=c("lightgreen", "lightpink", "lightblue", "orange")
      
)

# Histogram for thr continious data
hist(df$Income,
     main = "This is the fucking histogram",
     sub = "Income->",
     ylab = "Frequencies->")


# Find the column names
colnames(df)


unique(df$NSiblings)

absoluteFrequencies <- table(df$NSiblings)
absoluteFrequencies

realtiveFrequencies <- prop.table(table(df$NSiblings))
realtiveFrequencies

cumsumFrequencies <- cumsum(table(df$NSiblings))
cumsumFrequencies

cbind(absFrequencies, round(realtiveFrequencies, digits = 3), cumsumFrequencies)


barplot(df$NSiblings,)

df$NSiblings




# Written Exam questions

data <- c("s", "a", "s", "s", "u", "s", "s", "a",
          "a", "s", "s", "a", "u", "a", "a", "s", "u",
          "a", "a", "u", "a", "a", "s", "s", "a")
data


absFrequencies <- table(data)
absFrequencies

relativeFrequencies <- prop.table(table(data))
relativeFrequencies

absoluteCumsum <- cumsum(absFrequencies)
absoluteCumsum

relativeCumsum <- cumsum(relativeFrequencies)
relativeCumsum

cbind(absFrequencies, relativeFrequencies, absoluteCumsum , relativeCumsum)

barplot(absFrequencies,
        main = "Plot the absolute frequencies",
        sub = "The unique value",
        ylab = "value")

barplot(relativeFrequencies, absFrequencies)



# What I learnt today:
# 
# 1. to read the dataframe: read.csv()
# 2. to check the columns, rows: nrow(), ncol()
# 3. to check the dimension or shape: dim()
# 4. to check the column names: colnames()
# 5. to find the absoulte frequencies: which is value_counts: table()
# 6. to find the relative frequencies: prop.table()
# 7. to find the cumulative frequencies: cumsum()
# 8. to polot the barplot: barplot(), where main is the title, sub: X-axis, ylab: Y-axis, col which refers colorConverter(
# 9. hisplot() which is similar but it will be working with fraction dataset
# 10. we also learn round()
)
col: 