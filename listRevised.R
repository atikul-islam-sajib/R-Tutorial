# Create a list
simpleList <- list(c(1, 2, 3, 4, 5), c(TRUE, FALSE, TRUE), c("A", "B", "C"), c(5.5:1.0))
print(simpleList)
# Access the elements using []
print(simpleList[1])
print(simpleList[2])
print(simpleList[3])

# Accessing the elements using [[]]
print(simpleList[[1]])
print(simpleList[[2]])
print(simpleList[[3]])
# Do the accessing with limit
print(simpleList[1:4])
# Do the accessing multiple index
print(simpleList[c(1, 2, 2)])

# Insert the new data :
simpleList <- append(simpleList, c(1+4i, 2+3i))
print(simpleList)
# Want to access the first index
simpleList <- append(simpleList, seq(-10, 0, 2), after = 0)
print(simpleList)

# Update the elements
# Want to update the elements by 10 times in the index number 7
simpleList[[7]] <- simpleList[[7]] * 10
print(simpleList)
# Wanna update the TRUE, FALSE into 1 and 0
trueIndex <- which(simpleList[[8]] == TRUE)
falseIndex <- which(simpleList[[8]] == FALSE)
simpleList[[8]][trueIndex] <- 1
simpleList[[8]][falseIndex] <- 0
print(simpleList)
# Wanna update the "A": Atikul Islam Sajib, "B": Tamima Jahan and "C": Sanjida Kohinor Oni
for (character in simpleList[[9]]){
  if (character == "A"){
     simpleList[[9]][which(simpleList[[9]] == "A")] <- "Atikul Islam Sajib"
  }else if (character == "B"){
    simpleList[[9]][which(simpleList[[9]] == "B")] <- "Tamima Jahan"
  }else{
    simpleList[[9]][which(simpleList[[9]] == "C")] <- "Sanjida Kohinor Oni"
  }
}
print(simpleList)

# Delete the list
# Want to delete 1 to 6 index with their all values: In list, NULL is not working, to delete that please use "-"
simpleList <- simpleList[-c(1, 2, 3, 4, 5, 6, 12)]
print(simpleList)

# naming the list
names(simpleList) <- c("Interger", "Boolean", "Names", "Numeric", "Complex")
print(simpleList)

# With naming access the elements
print(simpleList[["Interger"]])
print(simpleList[["Boolean"]])
print(simpleList[["Names"]])
print(simpleList["Numeric"])
print(simpleList[["Complex"]])

# With naming access the elements using "$"
print(simpleList$Interger)
print(simpleList$Boolean)
print(simpleList$Names)
print(simpleList$Numeric)
print(simpleList$Complex)

# Do the naming in a different way while creating the list
namingList <- list(names = c("A", "B"), marks = c(90, 100), departments = c("CSE", "EEE"))
print(namingList)

# Combine multiple list
list1 <- list(1:10, seq(11, 20), rep(c(TRUE, FALSE), times = 20), c("Atikul Islam Sajib", "Tamima Jahan"))
list2 <- list(list("A", "B", "C"), c(101:200))

combinedList <- list(list1, list2)
print(combinedList)

# Do some arithmatic operation
# To do this first we should convert this list into unlist
# Or, using [[]] symbol to do this for specific index
sequenceValues <- unlist(combinedList[[1]][[1]])
print(sequenceValues)
print(sum(sequenceValues))
# Do the another way
print(sum(combinedList[[1]][[1]]))

# Find the length of the list
print(length(combinedList))

# Create the fibonacci sseris
fibonacciSeris <- function(limit = 5){
  first <- 0
  second <- 1
  fibonacci <- NULL
  fibonacci <- append(fibonacci, c(first, second))
  
  for (value in 2:(limit-1)){
    result <- first + second
    fibonacci <- append(fibonacci, result)
    first <- second
    second <- result
  }
  return (fibonacci)
}

print(fibonacciSeris())
print(fibonacciSeris(limit = 10))

# lappay and sapply used
print(simpleList)
# Find the length of the Names
print(lapply(simpleList$Names, function(names) length(unlist(strsplit(names, " "))))) # It will return a list
print(sapply(simpleList$Names, function(names) length(unlist(strsplit(names, " "))))) # It will return a vector with structured format

simpleList <- list(c(1, 2, 3, 4, 5), c(TRUE, FALSE, TRUE), c("A", "B", "C"), c(5.5:1.0))
print(simpleList)
# Wanna find the sum, mean, std, var, sqrt in the index number 1, 4
print(lapply(simpleList[c(1, 4)],function(values) c(
  sum = sum(values), mean = mean(values), sd = sd(values), var = var(values), sqrt = sum(sqrt(values)))))
print(sapply(simpleList[c(1, 4)],function(values) c(
  sum = sum(values), mean = mean(values), sd = sd(values), var = var(values), sqrt = sum(sqrt(values)))))

# Is it possible to use mapply, lets start: It works
print(mapply(max, simpleList[1], simpleList[4]))



