thisMatrix <- matrix(data = seq(1:30), nrow =5, ncol =6)
thisMatrix

# Use the apply to get the the max for eachROW
apply(thisMatrix, 1, max)
# Use the apply to get the the max for eachCol
apply(thisMatrix, 2, max)

# Use sapply to get the maximum
list(thisMatrix[, 3])
sapply(list(thisMatrix[, 3]), max)
lapply(list(thisMatrix[, 3]), max)

# tapply
thisMatrix
thisMatrix <- cbind(thisMatrix, c(TRUE, FALSE, TRUE, TRUE, FALSE))
thisMatrix

tapply(thisMatrix[, 6], thisMatrix[, 7], max)

# mapply
findEven <- function(value1, value2){
  if ((value1 %%2 == 0) & (value2 %%2 == 0)){
    return (paste(value1, "and", value2))
  }
}
unlist(mapply(findEven,thisMatrix[, 3], thisMatrix[, 5]))



##################################################################################

thislist <- list(
  l1 = c(1, 2, 3),
  l2 = 4:10,         # Direct sequence
  l3 = c(TRUE, FALSE, TRUE)
)

thislist

# Now I want to access the first element
thislist[1]
thislist[[1]][1]
thislist[[1]][2]

#now I want to add 100
thislist$l1 <- c(thislist$l1, 100, 101, 102)
thislist



thisList <- list(
  seq(1, 10),
  list(11, 12, 13),
  c(TRUE, FALSE)
)

thisList

thisList[[3]] <- append(thisList[[3]], c(14, 15))
thisList

thisList[[3]]
thisList[3]


length(thisList)

all <- 0
for(elements in thisList){
  all = all + sum(length(elements))
}
print(all)
