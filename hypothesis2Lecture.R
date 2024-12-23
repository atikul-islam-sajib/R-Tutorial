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
