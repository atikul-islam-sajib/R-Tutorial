# Do the simple Linear Regression by scratch
X <- c(20, 50, 70, 100, 100)
y <- c(25, 35, 20, 30, 45)

print(X)
print(y)

simpleLinearRegression <- function(X, y){
  b1 <- cov(X, y) / var(X)
  b0 <- mean(y) - (b1 * mean(X))
  
  return (c(b0, b1))
}

coefficients <- simpleLinearRegression(X, y)
print(coefficients)

intercept <- coefficients[1]
slope <- coefficients[2]

print(intercept)
print(slope)

# Fit the training data
fittedScratch <- function(X){
  linearModelScratch <- intercept + slope * X
  return(linearModelScratch)
}
print(fittedScratch(X))
# Find the residuals of this model
print(y - fittedScratch(X))
# Find the total residuals of this model
print(sum(y - fittedScratch(X)))
# Plot the data
plot(
  X,
  y,
  xlab = "X",
  ylab = "Y",
  main = "Simple Linear Regression"
)
# Plot the goodness of fit line in this plot
abline(coef = c(intercept, slope))


#################################################
#             R's built-in function.            #
#################################################


# Do the same thing using R's built-in function
linearModel <- lm(y~X)
# Find the coefficients of the linerModel
print(coef(linearModel))
# Do the fit with the training data
trainPredicted <- fitted(linearModel)
print(trainPredicted)
# Find the residuals of this linearModel
residuals <- resid(linearModel)
print(residuals)
# Find the total residual of this model
print(sum(residuals))
# Find the summary of this linearModel
print(summary(linearModel))
