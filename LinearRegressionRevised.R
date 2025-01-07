# Do the linear regression by scratch
X <- c(65, 63, 67, 64, 68, 62, 70, 66, 68, 67, 69, 71)
y <- c(68, 66, 68, 65, 69, 66, 68, 65, 71, 67, 68, 70)

print(X)
print(y)
print(length(X))
print(length(y))

linearRegression <- function(X, y){
  b1 <- cov(X, y) / var(X)
  b0 <- mean(y) - (b1 * mean(X))
  return (c(intercept = b0, slope = b1))
}

coefficients <- linearRegression(X = X, y = y)
print(coefficients)

intercept <- coefficients["intercept"]
slope <- coefficients["slope"]

print(intercept)
print(slope)

fittedLinear <- intercept + slope * X
print(fittedLinear)

residualsLinear <- y - (intercept + slope * X)
print(residualsLinear)
print(sum(residualsLinear))

RScore <- sqrt(
  (cov(X, y) * cov(X, y)) / (var(X) * var(y))
)
print(RScore)

plot(X, y, xlab = "X-Value", ylab = "Y-Value", main = "Simple Linear Regression")
abline(coef = c(intercept, slope))

# Do the same thing using R's built-in function
linearModel <- lm(y ~ X)
print(linearModel)

coefLinearRegression <- coef(linearModel)
print(coefLinearRegression)

residualsLinearRegression <- resid(linearModel)
print(residualsLinearRegression)
print(sum(residualsLinearRegression))

fittedLinearRegression <- fitted(linearModel)
print(fittedLinearRegression)

summaryLinearRegression <- summary(linearModel)
print(summaryLinearRegression)

predictedValue <- predict(linearModel, newdata = data.frame(value = 10))
print(predictedValue)
