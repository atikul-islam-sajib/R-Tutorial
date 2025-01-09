# Example 01
# Ho: mean = 50
# Ha: mean > 50
muValue <- 50
n <- 30
sdValue <- 5
meanValue <- 53

paste("mu-value = ", muValue, "number of samples = ", n, "standard deviation = ", sdValue, "mean value = ", meanValue)

tStat <- (meanValue - muValue) / (sdValue / sqrt(n))
print(tStat)

pValue <- 1 - pt(abs(tStat), df = n - 1)
print(pValue)

ifelse (pValue < 0.005, "We have strong evidence to reject the null hypothesis", "We don't have enough evidence to reject the null hypothesis")

# Examples 02
# Ho: mean = 50
# Ha: mean != 50

muValue <- 50
n <- 40
sdValue <- 4
meanValue <- 49

paste("mu-value = ", muValue, "number of samples = ", n, "standard deviation = ", sdValue, "mean value = ", meanValue)

tStat <- (meanValue - muValue) / (sdValue / sqrt(n))
print(tStat)

pValue <- 2 * (1 - pt(abs(tStat), df = n - 1))
print(pValue)

ifelse (pValue < 0.005, "We have strong evidence to reject the null hypothesis", "We don't have enough evidence to reject the null hypothesis")

# Example 03: BHT
# Ho: mean == 1000
# H1: mean != 1000

muValue <- 1000
meanValue <- 998.6
n <- 20
Sx <- 2.251
df <- n - 1
significanceLevel <- 0.05

tStat <- (meanValue - muValue) / (Sx / sqrt(n))
print(tStat)

pValue <- 2 * (1 - pt(abs(tStat), df = df))
print(pValue)

ifelse (pValue < significanceLevel, "We have sufficient amount of evidence to reject the null hypothesis", "We dont have sufficient amount of evidence to reject the null hypothesis")

significanceLevel <- 0.01

ifelse (pValue < significanceLevel, "We have sufficient amount of evidence to reject the null hypothesis", "We dont have sufficient amount of evidence to reject the null hypothesis")


# Example 02: BHT
# Ho: mean == 37
# H1: mean != 37

data <- c(36.8, 37.2, 37.5, 37, 36.9, 37.4, 37.9, 38)
print(data)

muValue <- 37
meanValue <- mean(data)
Sx <- sd(data)
n <- length(data)
df <- n - 1
significanceLevel < - 0.05

print(muValue)
print(meanValue)
print(Sx)
print(n)
print(df)

tStat <- (meanValue - muValue) / (Sx / sqrt(n))
print(tStat)

pValue <- 2 * (1- pt(abs(tStat), df = df))
print(pValue)

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)

## Using R's built-in function
tStat <- t.test(data, mu = muValue, alternative = "two.sided", conf.level = 0.95)
print(tStat)

pValue <- tStat$p.value

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)

# Example 03: BHT
# Ho: mean <= 127.2
# Ha: mean > 127.2

data <- read.csv("/Users/macbook/Desktop/systolic.csv")
print(data)

muValue <- 127.2
meanValue <- mean(data$BloodPressure)
Sx <- sd(data$BloodPressure)
n <- length(data$BloodPressure)
df <- n - 1
significanceLevel <- 0.05

print(muValue)
print(meanValue)
print(Sx)
print(n)

tStat <- (meanValue - muValue) / (Sx / sqrt(n))
print(tStat)

pValue <- 1 - pt(abs(tStat), df = df)
print(pValue)

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)

## Do the same thing using R's built-in function
tStat <- t.test(data$BloodPressure, mu = muValue, alternative = "greater", conf.level = 0.95)
print(tStat)

pValue <- tStat$p.value

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)

# Example 04: BHT
# Ho: meanA >= meanB
# Ha: meanA < meanB

A <- c(8.8, 8.4, 7.9, 8.7, 9.1, 9.6)
B <- c(9.9, 9, 11.1, 9.6, 8.7, 10.4, 9.5)

print(A)
print(B)

xAbar <- mean(A)
xBbar <- mean(B)
nA <- length(A)
nB <- length(B)
df <- nA + nB - 2
sdA <- sd(A)
sdB <- sd(B)
significanceLevel <- 0.05

print(xAbar)
print(xBbar)
print(nA)
print(nB)
print(df)
print(sdA * sdA)
print(sdB * sdB)

sP <- (((nA - 1) * var(A)) + ((nB - 1) * var(B))) / (nA + nB - 2)
print(sP)

tStat <- (xAbar - xBbar) / (sqrt((sP/nA) + (sP/nB)))
print(tStat)

pValue <- 1 - pt(abs(tStat), df = df)
print(pValue)

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)

## Do the same thing using R's built-in function
tStat <- t.test(A, B, var.equal = TRUE, alternative = "less", conf.level = 0.95)
print(tStat)

pValue <- tStat$p.value

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)

# Examples 05: BHT
# Ho: meanX <= meanY
# H1: meanX > meanY

X <- c(60, 80, 70, 75, 80, 78)
y <- c(62, 70, 72, 70, 72, 76)

print(X)
print(y)

d <- y - X
dBar <- mean(d)
dSd <- sd(d)
n <- length(X)
df <- n -1

print(d)
print(dBar)
print(dSd)
print(n)
print(df)

tStat <- dBar / (dSd / sqrt(n))
print(tStat)

pValue <- 1 - pt(abs(tStat), df = df)
print(pValue)

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)

## Do the same thing using R's built-in function
tStat <- t.test(X, y, paired = TRUE, alternative = "greater", conf.level = 0.95)
print(tStat)

pValue <- tStat$p.value

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)

# Do the same thing using different way
tStat <- t.test(d, alternative = "less", conf.level = 0.95)
print(tStat)

pValue <- tStat$p.value

ifelse (
  pValue < significanceLevel,
  "We have sufficient amount of evidence to reject the null hypothesis",
  "We dont have sufficient amount of evidence to reject the null hypothesis"
)