# Variance test
# Ho: mean A and mean B is equal 
# H1: mean A is greater than mean B

A <- c(8, 8, 7, 8, 9, 9)
B <- c(9, 9, 11, 9, 8, 10, 9)

print(length(A))
print(length(B))

varA = var(A)
varB = var(B)

print(varA)
print(varB)

if (varA > varB){
  dfA <- length(A) - 1
  dfB <- length(B) - 1
  
  fStat <- varA / varB
  print(fStat)
  
}else{
  dfA = length(B) - 1
  dfB = length(A) - 1

  fStat <-  varB / varA
  print(fStat)
}

print(dfA)
print(dfB)

pValue <- 2 * pf(fStat, dfA, dfB, lower.tail = FALSE)
print(pValue)

ifelse (pValue > 0.005, "Ho cannot be rejected", "Ho is rejected")

# Use the same thing using var.test()
fStat <- var.test(A, B)
print(fStat)

ifelse (fStat$p.value > 0.005, "Ho cannot be rejected", "Ho is rejected")

# Question: Youtube
# Ho: mean A and mean B is equal
# H1: mean A and mean B is not equal

A <- c(40, 30, 38, 41, 38, 35)
B <- c(39, 38, 41, 33, 32, 49, 49, 34)

print(A)
print(B)

print(length(A))
print(length(B))

varA = var(A)
varB = var(B)

print(varA)
print(varB)

if (varA > varB){
  fStat <- varA / varB
  dfA <- length(A) - 1
  dfB <- length(B) - 1
}else{
  fStat <- varB / varA
  dfA <- length(B) - 1
  dfB <- length(A) - 1
}

print(fStat)
print(dfA)
print(dfB)

pValue <- 2 * pf(fStat, dfA, dfB, lower.tail = FALSE)
print(pValue)

ifelse (pValue > 0.005, "Ho cannot be rejected", "Ho is rejected")

# Do the same thing using var.test()
fStat <- var.test(A, B)
print(fStat)

ifelse (fStat$p.value > 0.005, "Ho cannot be rejected", "Ho is rejected")

# Chi-Square Method
# Ho: there is no significance difference
# H1: there is significance difference

workers <- matrix(c(200, 100, 50, 150), nrow = 2, byrow = TRUE)
print(workers)

rownames(workers) <- c("Technical", "Non-Technical")
colnames(workers) <- c("Male", "Female")

print(workers)

rowSum <- apply(workers, 1, sum)
colSum <- apply(workers, 2, sum)

print(rowSum)
print(colSum)

E <- outer(rowSum, colSum) / sum(rowSum)
print(E)
print(workers)

chiSquare <- sum((workers - E)^2 / E )
print(chiSquare)

df <- (dim(workers)[1] - 1) * (dim(workers)[2] - 1)
print(df)

pValue <- 1 - pchisq(chiSquare, df)
print(pValue)

ifelse (pValue > 0.005, "Ho cannot be rejected", "Ho is rejected")

# Do the same thing using chisq.test()
chisq.test(workers)
ifelse (pValue > 0.005, "Ho cannot be rejected", "Ho is rejected")

# Examples: Lecture

# Input matrix
M <- matrix(c(18, 36, 21, 9, 6, 12, 36, 45, 36, 21, 6, 9, 9, 3, 3, 3, 9, 9, 6, 3), 
            nrow = 4, ncol = 5, byrow = TRUE)
print(M)

# Number of rows and columns
numRows <- nrow(M)
numCols <- ncol(M)

print(paste("Rows = ", numRows, " Columns = ", numCols))

# Row and column sums
rowSums <- apply(M, MARGIN = 1, sum)
colSums <- apply(M, MARGIN = 2, sum)

print(rowSums)
print(colSums)

# Correct expected values matrix
totalSum <- sum(M)
E <- outer(rowSums, colSums) / totalSum

# Chi-squared statistic
chi_squared_stat <- sum(((M - E) ^ 2) / E)

print("Expected values matrix (E):")
print(E)

print(paste("Chi-squared statistic:", chi_squared_stat))

df = (numRows - 1) * (numCols -1)
print(df)

pValue <- 1 - pchisq(chi_squared_stat, df)
print(pValue)

ifelse (fStat$p.value > 0.005, "Ho cannot be rejected", "Ho is rejected")

# Do the same thing using chisq.test()
chiSq <- chisq.test(M)
print(chiSq)

ifelse (chiSq$p.value > 0.005, "Ho cannot be rejected", "Ho is rejected")
