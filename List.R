# Create a simple list
simpleList <- list(1, 2, 3, TRUE, FALSE, 3+4i, 10.01)
simpleList
# Access all the odd index
print(simpleList[c(seq(1, length(simpleList), by = 2))])

# Access the last element and change it into by multiple 10
simpleList[[c(length(simpleList))]] <- simpleList[[c(length(simpleList))]] * 10
print(simpleList)

# Create a nested list
nestedList <- list(c(1, 2), seq(3, 5), 6:10, list(11, 12, 13))
print(nestedList)
# I want to find how many even numbers in the second index
print(length(nestedList[[2]][nestedList[[2]] %% 2 == 0]))
# Print how many data is presence in the 3rd index
print(length(nestedList[[3]]))
# I want to print the last index value
print(nestedList[length(nestedList)])
# I want to change 12 in to 120
nestedList[[4]][[2]] <- 120
print(nestedList)

# Find some arithmetic operation
# To do this please first unlist the list
print(sum(unlist(nestedList)))

# Insert the data
nestedList <- append(nestedList, c(TRUE, FALSE))
print(nestedList)
# Delete the data
nestedList[[5]] <- NULL
print(nestedList)
# I want to print first, 3rd, and last index data
print(nestedList[c(1, 3, length(nestedList))])
# I dont want to print first, 3rd, and last index data
print(nestedList[-c(1, 3, length(nestedList))])

# naming the list
namingList <- list(names = c("Atikul Islam Sajib", "Tamima Jahan"), depratment = c("Computer Science", "DataScience"))
print(namingList)

# Just print the names
print(namingList$names)
# Just print the department
print(namingList$depratment)

# Just print the name which is Atikul Islam Sajib
for (name in namingList$names){
  if (name == "Atikul Islam Sajib"){
    print(name)
  }else {next}
}


# Use lappy, sapply in the list
useList <- list(1:10, seq(11, 20), c(TRUE, FALSE), list(21:30))
print(useList)

# Find the sum of the second index
sapply(useList[2], sum)
# Do the same using sum
sum(useList[[2]])
# Find the sum, mean, sd, variance of the first, second, fourth index
computeSumMeanSDVariance <- function(value){
  return (c(sum(value), mean(value), sd(value), var(value)))
}
print(sapply(useList[c(1, 2)], computeSumMeanSDVariance))
print(lapply(useList[c(1, 2)], computeSumMeanSDVariance))
print(sapply(useList[[4]], computeSumMeanSDVariance))


# Combined the list
list1 <- list(name = c("A", "B"), ID = c(2, 3), department = list(c("CSE", "BBA", "BSC")))
list2 <- list(1:10, rep(c(TRUE, FALSE)), times = c(5, 10))

combined <- list(list1, list2)
print(combined)

sapply(combined[[2]][1], sum)
