# Question 1
# Ho: mean = 1000ml
# H1: mean != 1000ml
# It is two sided t test 
machineRepaired <- function(xBar, pMean, sStd, nSamples){
  return (
    (xBar - pMean) / (sStd / sqrt(nSamples))
  )
}
xBar <-  998.6
pMean <- 1000
nSamples <- 20
sStd <- 2.251
df <- nSamples - 1
confidenceInterval <- 95 / 100

paste(
  "Populated mean = ", pMean,
  " Samples mean = ", xBar,
  " Total samples = ", nSamples,
  " Samples standard deviation = ", sStd
  )

tStat <- machineRepaired(
  xBar = xBar,
  pMean = pMean,
  sStd = sStd,
  nSamples = nSamples
)
paste("T value = ", tStat)

# Find the pValue: though it is two sided T test that's why we should use 2 * with the result
pValue <- 2 * (1 - pt(abs(tStat), df = df))
paste("P Value = ", pValue)

ifelse (
  pValue > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
  )

# Question 2
# Ho: mean = 37
# H1: mean != 37
# This is two sided t Test

temp <- c(36.8, 37.2, 37.5, 37, 36.9, 37.4, 37.9, 38)
print(length(temp))

nSamples <- length(temp)
xMean <- mean(temp)
sStd <- sd(temp)
pMean <- 37
df = nSamples - 1
confidenceInterval = 1 - (95 / 100)

paste(
  "Populated mean = ", pMean,
  " Samples mean = ", xMean,
  " Total samples = ", nSamples,
  " Samples standard deviation = ", sStd
)

bodyTemperate <- function(xMean, pMean, sStd, nSamples){
  return (
    (xMean - pMean) / (sStd / sqrt(nSamples))
  )
}
tStat <- bodyTemperate(
  xMean = xMean,
  pMean = pMean,
  sStd = sStd,
  nSamples = nSamples
)
print(tStat)

pValue <- 2 * (1 - pt(abs(tStat), df = df))
print(pValue)

ifelse (
  pValue > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)

# Do the same thing using t.test()
tStat <- t.test(
  temp,
  mu = pMean,
  alternative = "two.sided"
)
print(tStat)
paste("95 percent confidence interval:", tStat$conf.int)

ifelse (
  tStat$p.value > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)

# Question: 03
# Ho: mean is less than equal to 127.2
# H1: mean is greater than 127.2

dataset = read.csv("/Users/macbook/Desktop/systolic.csv")

print(head(dataset))
print(dim(dataset))

pMean <- 127.2
sMean <- mean(dataset$BloodPressure)
sStd <- sd(dataset$BloodPressure)
nSamples <- length(dataset$BloodPressure)
df = nSamples - 1
confidenceInterval = 0.05

paste(
  "Populated mean = ", pMean,
  " Samples mean = ", sMean,
  " Total samples = ", nSamples,
  " Samples standard deviation = ", sStd
)

bloodPressure <- function(pMean, sMean, sStd, nSamples){
  return (
    (sMean - pMean) / (sStd / sqrt(nSamples))
  )
}

tStat <- bloodPressure(pMean = pMean, sMean = sMean, sStd = sStd, nSamples = nSamples)
print(tStat)

pValues <- 1 - pt(abs(tStat), df = df)
print(pValues)

ifelse (
  pValues > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)
# Do the sane thing using t.test()
tStat <- t.test(
  dataset$BloodPressure,
  mu = pMean,
  alternative = "greater",
  conf.level = 0.95
)
print(tStat)

ifelse (
  tStat$p.value > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)

# Question: 04
# H0: meanA is greater than meanB
# H1: meanA is lower than meanB

dataset <- read.csv("/Users/macbook/Desktop/bloodCoagulation.csv", sep = ",", row.names = NULL)
print(dataset)
print(dataset$row.names)

A <- c(8, 8, 7, 8, 9, 9)
B <- c(9, 9, 11, 9, 8, 10, 9)

print(length(A))
print(length(B))

x1Bar <- mean(A)
x2Bar <- mean(B)

df = length(A) + length(B) - 2
confidenceInterval = 0.05

print(x1Bar)
print(x2Bar)

pooledVarianceCal <- function(n1, n2, A, B) {
  # Calculate variances for groups A and B
  varianceA <- var(A)
  varianceB <- var(B)
  
  # Calculate the numerator of the pooled variance formula
  numerator <- ((n1 - 1) * varianceA) + ((n2 - 1) * varianceB)
  
  # Return the pooled variance
  return(numerator / (n1 + n2 - 2))
}

varianceAB = pooledVarianceCal(n1 = length(A), n2 = length(B), A = A, B = B)
print(varianceAB)

bloodCoagulation <- function(x1Mean, x2Mean, varianceAB, n1, n2){
  denominator <- sqrt(
    (varianceAB / n1) + (varianceAB / n2)
  )
  
  return (
    (x1Mean - x2Mean) / denominator
  )
}

tStat <- bloodCoagulation(
  x1Mean = x1Bar, x2Mean = x2Bar, varianceAB = varianceAB, n1 = length(A), n2 = length(B)
  )
print(tStat)

pValues <- 1 - pt(abs(tStat), df = df)
print(pValues)

ifelse (
  pValues > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)

# Do the same thing using t.test()
tStat <- t.test(
  A,
  B,
  alternative = "less",
  var.equal = TRUE,
  conf.level = 0.95
)
print(tStat)

ifelse (
  tStat$p.value > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)

# Queation: 4
# Ho: before is less than equal to after
# H1: before is greater than after
# This is also written in a diffrent way\
# Ho: d is greater than equal to 0
# H1: d is lower than 0

before <- c(60, 80, 70, 75, 80, 78)
after <- c(62, 70, 72, 70, 72, 76)

print(before)
print(after)

d <- after - before
print(d)

dStd <- sd(d)
print(dStd)

df = length(before) - 1

pairedTest <- function(d, dStd, nSamples){
  return (
    mean(d) / (dStd / sqrt(nSamples))
  )
}

tStat <- pairedTest(d = d, dStd = dStd, nSamples = length(before))
print(tStat)

pValues <- 1 - pt(abs(tStat), df = df)
print(pValues)

ifelse (
  pValues > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)

# Do the same thing using t.test()
tStat <- t.test(
  after,
  before,
  paired = TRUE,
  alternative = "less",
  conf.level = 0.95
)
print(tStat)

ifelse (
  tStat$p.value > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)

# Is it possible to pass only d
tStat <- t.test(
  d, 
  alternative = "less",
)
print(tStat)

ifelse (
  tStat$p.value > confidenceInterval,
  "There is a strong evidence that we cannot reject the null Hypothesis",
  "There is a strong evidence that we can reject the null Hypothesis "
)