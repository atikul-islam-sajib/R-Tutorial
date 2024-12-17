# Create a simple dataframe
df <- data.frame(
  name = c("Atikul Islam Sajib", "Tamima Jahan", "Sanjida Kohinor Oni", "ABS Nahin", "Dr. Kamrul"),
  cgpa = c(3.94, 4, 3.95, 3.50, 3.80),
  department = c("CSE", "CSE", "CSE", "BBA", "BBA"),
  ieltsScore = c(7.5, 8.5, 8.5, 7.5, 8.0)
)
print(df)
# Find the total number of rows and columns in the dataset
print(dim(df))
# Find the number of instances of the dataset
print(nrow(df))
# Find the number of columns of the dataset
print(ncol(df))
# Find the length of the dataset
print(length(df))
# Find the datatype of the dataset
print(str(df))
# Find the summary of the dataset
print(summary(df))
# Find the columns name of the dataset
print(colnames(df))

# Accessing
# Wanna access the the name column using []: It will return the dataframe
print(df["name"])
# Wanna access the name column using [] - this time use index: It will also return the dataframe
print(df[1])
# Wanna access the cgpa, department columns at a time using []: It will return the dataframe
print(df[c("cgpa", "department")])
# Wanna access the cgpa, department columns at a time using [] - using index: It will return the dataframe
print(df[c(2, 3)])
# Wanna access the name using [[]]: It will return the list
print(df[["name"]])
# Wanna acess the name using [[]] - this time use index: It will return the list
print(df[[1]])
# Wanna access name using $: It will return thre list
print(df$name)
# Wanna access the cgpa using $
print(df$cgpa)
# Wanna access the first row and all columns
print(df[1, ])
# Wanna access the first columns with all rows
print(df[,1])
# Wanna access the first and third row with all columns
print(df[c(1, 3), ])
# Wanna access the first and thrid columns with all rows
print(df[, c(1, 3)])
# Wanna access the first second rows with second and third column
print(df[c(1, 2), c(2, 3)])
# Wanna access all the columns except ieltsScore
print(df[-c(4)])
# Wanna access all the columns without department and ieltsScore
print(df[-c(3, 4)])
# Wanna access all the rows except third and ieltsScore column
print(df[-c(3), -c(4)])
# Wanna access all the rows excpet first, second and the columns that is cgpa, department
print(df[-c(1, 2), -c(2, 3)])
# Check there is any NaN or NA value presence or not
print(ifelse (sum(is.na(df)) == 0, "no NAN", "NAN"))

# Insert
# Create a new column named scholarship where if the cgpa > 8.50 as Yes or No
getResult <- df[["cgpa"]] > 3.50
df <- cbind(df, scholarship = ifelse (getResult == TRUE, "Scholarship", "Not Scholarship"))
print(df)
# This is the different approach to do this same thing
getResult <- df[["cgpa"]] > 3.50
df$scholarshipOrNot <- ifelse (getResult == TRUE, "Scholarship", "Not Scholarship")
print(df)

# Update
# Wanna change name "ABS" to "Abdul Sattar Nahin"
df[[1]][4] <- "Abdul Sattar Nahin"
print(df)
# Wanna change "Abdul Sattar Nahin" to "ABS"
df[4, 1] <- "ABS Nahin"
print(df)
# Wanna update CSE to Computer Science
fullName <- function(name){
  if (name == "CSE"){
    return ("Computer Science")
  }else if (name == "BBA"){
    return ("Business Administration")
  }
}
df$department <- sapply(df$department, fullName)
print(df)
# Create a new column named expression, where it will be ieltsScore > 8.0 as "Good", "Moderate"
ieltsExpression <- function(ielts){
  if (ielts > 8.0){
    return ("Good")
  }else{
    return ("Moderate")
  }
}
df <- cbind(df, expression = sapply(df$ieltsScore, ieltsExpression))
print(df)

# Delete
# Wanna delete the columns expression
df <- df[-c(6)]
print(df)
# Wanna delete the "scholarshipOrNot" columns
df <- df[-c(5)]
print(df)

# apply family
# Do the sum, mean of the cgpa and ieltsScore
sumMean <- function(value){
  return (c(sum = sum(value), mean = mean(value)))
}
# Use lapply: that would return a list
print(lapply(df[c(2, 4)], sumMean))
print(sapply(df[c(2, 4)], sumMean))
# Find the number of departmnet
table(df$department)
# Find the avg cgpa based on department
print(tapply(df$cgpa, df$department, mean))
# Find the new columns based on cgpa and ieltsScore
getSomething <- function(cgpa, ielts){
  if (cgpa >= 3.8 & ielts >= 8.0){
    return ("Good")
  }else if (cgpa >= 3.5 & ielts >= 6.5){
    return ("Moderate")
  }else{
    return ("Bad")
  }
}
print(mapply(getSomething, df$cgpa, df$department))
df$expression <- mapply(getSomething, df$cgpa, df$department)
print(df)
