# Create the dataframe

df <- data.frame(
  name = c("A", "B", "C", "D", "E"),
  ID = c(1:5),
  score = c(5, 7, 5, 5.5, 6)
)
print(df)

# access the name
print(df[1])
# access the name column 
print(df[[1]])
# access the name columns
print(df["name"])
# access the name columns
print(df[["name"]])
# access the name column
print(df$name)

# Find the first row
print(df[1, ])
# Find the second column
print(df[, 2])
# Find the first, and 3rd row
print(df[c(1, 2)], )
# Find the first and 3rd columns
print(df[, c(1, 3)])
# Find the the first and third row but in column ID
print(df[c(1, 3), "ID"])

# Create a new column based on score >6 as good other is bad
computeGB <- function(value){
  if (value > 6.0){
    return ("Good")
  }else{
    return ("Bad")
  }
}

df <- cbind(df, GB = sapply(df[["score"]], computeGB))
print(df)

# Do the tapply
print(tapply(df["score"], df["GB"], max))
print(tapply(df["score"], df["GB"], min))

# Find the dimension
dim(df)
# Find the nrow
nrow(df)
# Find the ncol
ncol(df)
# Find the summary
summary(df)
# Find the data types
str(df)
# Find the length
length(df)

# Find the mean score
sum(df["score"])
mean(df[["score"]])
mean(df$score)

# Compute the score
computeMean <- function(value){
  return (mean(value))
}

sapply(list(df[["score"]]), computeMean)
sapply(list(df$score), computeMean)
sapply(list(df[[3]]), computeMean)

# Find the name which score is greater than 5

df$name[df$score > 5]
