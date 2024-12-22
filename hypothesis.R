# One sample test
# Independent two sample test
# Paired t test
print(t.test(c(36.8, 37.2, 37.5, 37, 36.9, 37.4, 37.9, 38), mu = 37))

meanValue <- mean(c(36.8, 37.2, 37.5, 37, 36.9, 37.4, 37.9, 38))
print(meanValue)
stValue <- sd(c(36.8, 37.2, 37.5, 37, 36.9, 37.4, 37.9, 38))
print(stValue)
n <- length(c(36.8, 37.2, 37.5, 37, 36.9, 37.4, 37.9, 38))
print(n)

tStat <- sum(meanValue - 37)/(stValue/sqrt(n)) 
print(tStat)

pValue <- 2 * (1 - pt(abs(tStat), df = n-1))
print(pValue)

2 * (1 - pt(abs(-2.7814), df = 19))

tTest <- function(pMean, sMean, sStd, sampleCount) {
  return(
    (sMean - pMean) / (sStd / sqrt(sampleCount))
  )
}

# Correctly call the function with arguments
tStat <- tTest(pMean = 1000, sMean = 998.6, sStd = 2.251, sampleCount = 20)
print(tStat)
# Find the pValue 
pValue <- 2 * (1 - pt(abs(tStat), df = 19))
print(pValue)

ifelse (pValue > 0.05, "There is no strong evidence to reject the null hypothesis", "Strong evidence to reject the null hypothesis")

ifelse (pValue > 0.01, "There is no strong evidence to reject the null hypothesis", "Strong evidence to reject the null hypothesis")

tTest <- function(sMean, pMean, sStd, sampleCount){
  return (
    (sMean - pMean)/(sStd/sqrt(sampleCount))
  )
}
tStat <- tTest(
  sMean = 49.7,
  pMean = 50,
  sStd = 1.2,
  sampleCount = 25
)
print(tStat)
df = 25 - 1
cInterval <- 0.05
pValue <- 2 * (1 - pt(abs(tStat), df = 24))
print(pValue)

if (pValue > cInterval){
  print("There is strong evidence that null hypothesis cannot be rejected")
}else {
  print("There is a strong evidence that null hypothesis is rejected")
}


# One simple t Test
temp <- c(36.8, 37.2, 37.5, 37, 36.9, 37.4, 37.9, 38)
pMean <- 37
sMean <- mean(temp)
nSamples <- length(temp)
sStd <- sd(temp)

print(pMean)
print(sMean)
print(nSamples)
print(sStd)

tTest4BodyTemp <- function(pMean, sMean, sStd, nSamples){
  return (
    (sMean - pMean)/(sStd/sqrt(nSamples))
  )
}
tStat <- tTest4BodyTemp(
  pMean = pMean,
  sMean = sMean,
  sStd = sStd,
  nSamples = nSamples
)
print(tStat)

df = length(temp) - 1
Pvalue <- 2 * (1 - pt(tStat, df = df))
print(Pvalue)

ifelse (pValue > 0.05, "There is strong evidence is that null hypothesis should not be rejected", "There is strong evidence is that null hypothesis should be rejeceted")

# Do the same thing using t.test
tResult <- t.test(
  temp,
  mu = 37,
  alternative = "two.sided",
  conf.level = 0.95
)
tResult

dataset <- read.csv("/Users/macbook/Desktop/systolic.csv")
print(dataset)
print(dim(dataset))

BloodPressure <- dataset$BloodPressure
print(BloodPressure)

pMean <- 127.2
sMean <- mean(BloodPressure)
sStd <- sd(BloodPressure)
nSamples <- 45

paste(pMean, sMean, sStd, nSamples)

tTest4Blood <- function(pMean, sMean, sStd, nSamples){
  return (
    (sMean - pMean)/(sStd/sqrt(nSamples))
  )
}
tStat <- tTest4Blood(
  pMean = pMean,
  sMean = sMean,
  sStd = sStd,
  nSamples = nSamples
)
print(tStat)

# It is one tail problem
df <- 45 - 1
pValue <- 1 - pt(abs(tStat), df = df)
print(pValue)

ifelse (pValue > 0.05, "There is strong evidence is that null hypothesis should not be rejected", "There is strong evidence is that null hypothesis should be rejeceted")
# Do the same thing t.test
tStat <- t.test(BloodPressure, mu = 127.2, alternative = "greater")
print(tStat)
print(tStat$p.value)
ifelse (tStat$p.value > 0.05, "There is strong evidence is that null hypothesis should not be rejected", "There is strong evidence is that null hypothesis should be rejeceted")

# Independent Two sample test
# Correcting variable names and function syntax
independentTwoSampleTest <- function(x1Mean, x2Mean, std1, std2, n1, n2) {
  # Calculate pooled variance for independent two-sample test
  pooledVariance <- (std1^2 / n1) + (std2^2 / n2)
  # Calculate t-statistic
  tStat <- (x1Mean - x2Mean) / sqrt(pooledVariance)
  return(tStat)
}

# Correct variable names and calculations
desktop <- c(12, 15, 18, 16, 20, 17, 14, 22, 19, 21, 23, 18, 25, 17, 16, 24, 20, 19, 22, 18, 15, 14, 23, 16, 12, 21, 19, 17, 20, 14)
mobile <- c(10, 12, 14, 13, 16, 15, 11, 17, 14, 16, 18, 14, 20, 15, 14, 19, 16, 15, 17, 14, 12, 11, 18, 15, 10, 16, 15, 13, 16, 11)

# Calculate means
desktopMean <- mean(desktop)
mobileMean <- mean(mobile)

print(desktopMean)
print(mobileMean)

# Calculate standard deviations
desktopStd <- sd(desktop)
mobileStd <- sd(mobile)

print(desktopStd)
print(mobileStd)

# Calculate lengths
nDesktop <- length(desktop)
nMobile <- length(mobile)

# Call the function
tStat <- independentTwoSampleTest(
  x1Mean = desktopMean,
  x2Mean = mobileMean,
  std1 = desktopStd,
  std2 = mobileStd,
  n1 = nDesktop,
  n2 = nMobile
)

# Print t-statistic
print(tStat)
df = nMobile + nDesktop - 2
pValue <- 2 * (1 - pt(abs(tStat), df = df))
print(pValue)

ifelse (pValue > 0.05, "There is strong evidence is that null hypothesis should not be rejected", "There is strong evidence is that null hypothesis should be rejeceted")

## Blood dataset
# Read the dataset without assigning any row names
bloodDataset <- read.csv("/Users/macbook/Desktop/bloodCoagulation.csv", sep = ",", row.names = NULL)
# Check the structure of the dataset
print(head(bloodDataset))
print(dim(bloodDataset))
print(bloodDataset$row.names)

A <- c(8, 8, 7, 8, 9, 9)
B <- c(9, 9, 11, 9, 8, 10, 9)

print(A)
print(B)

nA <- length(A)
nB <- length(B)

print(nA)
print(nB)

aMean <- mean(A)
bMean <- mean(B)

print(aMean)
print(bMean)

pooledVariance <- function(nA, nB, dataA, dataB) {
  varA <- var(dataA)
  varB <- var(dataB)
  numerator <- (nA - 1) * varA + (nB - 1) * varB
  denominator <- nA + nB - 2
  print(numerator)
  return(numerator / denominator)
}


pooledVar <- pooledVariance(nA = nA, nB = nB, dataA = A, dataB = B)
print(pooledVar)
print(sqrt(pooledVar))

tTestTwoSample <- function(x1Mean, x2Mean, poolVar, n1, n2){
  numerator <- (x1Mean - x2Mean)
  denominator <- (sqrt(pooledVar)/n1) + (sqrt(pooledVar)/n2)
  return (numerator/denominator)
}

tStat <- tTestTwoSample(
  x1Mean = aMean,
  x2Mean = bMean,
  poolVar = pooledVar,
  n1=nA,
  n2 = nB
)
print(tStat)
df = nA + nB - 2
pValue <- 1 - pt(abs(tStat), df = df)
print(pValue)
ifelse (pValue > 0.05, "There is strong evidence is that null hypothesis should not be rejected", "There is strong evidence is that null hypothesis should be rejeceted")

# Do the same using t.test
tStat <- t.test(A, B, alternative = "less", var.equal = TRUE)
print(tStat)

## Paired T test
before <- c(60, 80, 70, 75, 80, 78)
after <- c(62, 70, 72, 70, 72, 76)

print(before)
print(after)

difference <- after - before
print(difference)
print(sd(difference))
print(mean(difference))
print(mean(difference) * sqrt(nSamples))

tTest4Paired <- function(d, nSamples) {
  # Calculate standard deviation and mean of differences
  sdD <- sd(d)
  xBar <- mean(d)
  
  # Calculate t-statistic for paired test
  return (
    (xBar * sqrt(nSamples)) / sdD
  )
}
# Calculate t-statistic
tStat <- tTest4Paired(d = difference, nSamples = length(difference))
print(tStat)

df = length(before) - 1
pValue = 1 - pt(abs(tStat), df = df)
print(pValue)

ifelse (
  pValue > 0.005, "there is strong evidence not to reject the null hypothesis",
  "There is strong evidence to reject the null hypothesis"
)

# Do the same thing t.test
tStat <- t.test(
  after,
  before,
  paired = TRUE,
  conf.level = 0.95,
  alternative = "less"
)
print(tStat)

ifelse (
  tStat$p.value > 0.005, "there is strong evidence not to reject the null hypothesis",
  "There is strong evidence to reject the null hypothesis"
)

# Do the same for d and it will give you the same result
tStat <- t.test(difference, alternative = "less", conf.level = 0.95)
print(tStat)
ifelse (
  tStat$p.value > 0.005, "there is strong evidence not to reject the null hypothesis",
  "There is strong evidence to reject the null hypothesis"
)
