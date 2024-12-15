# Define a simple function
printHello <- function(){
  print("Hello world")
}
printHello()

# Define a function with return 
printHello <- function(){
  return ("Hello World")
}
print(printHello())

# Define the function with arguments
addTwoNumbers <- function(number1, number2){
  return (number1 + number2)
}

print(addTwoNumbers(10, 20))

# Define the function with default arguments
addTwoNumbers <- function(number1 = 10, number2 = 20){
  return (number1 + number2)
}

print(addTwoNumbers())
print(addTwoNumbers(0, 0))
print(addTwoNumbers(100, 100))

# Pass the vector in the function
addNumbers <- function(number1 = 10, number2 = 20){
  return (number1 + number2)
}

print(addNumbers(number1 = c(10, 20, 30)))
print(addNumbers(number1 = 1:10, number2 = 1:10))

# Nested function
outerFunction <- function(number1 = 10){
  innerFunction <- function(number2 = 20){
    return (number1 * number2)
  }
  return (innerFunction)
}

inner <- outerFunction(number1 = 10)
print(inner(number2 = 20))

# Calculate the factorial using function
computeFactorial <- function(number = 1){
  sumFactoral <- 1
  for (value in 1:number){
    sumFactoral <- sumFactoral * value 
  }
  
  return (sumFactoral)
}

print(computeFactorial(number = 4))

# Can I return multiple value as return, Yes just use "vector"/list/matrix....
mulReturn <- function(number1 = 10, number2 = 20){
  return (c(number1 + number2, number1 - number2, number1 * number2, number1 / number2))
}

print(mulReturn(number1 = 10, number2 = 20))
print(mulReturn(number1 = 1:10, number2 = 5))



# Find the Armstrong number
findArmstrong <- function(value = 1234){
  isArmstrong <- FALSE
  convertCharacter <- as.character(value)
  totalCharacters <- nchar(convertCharacter)
  totalValue <- 0
  
  for(value in strsplit(convertCharacter, "")){
    value <- as.numeric(value)
    totalValue <- totalValue + value ^ (totalCharacters)
  }
  return (sum(totalValue))
  
}
value <- findArmstrong(value = 1634)
if (value == 1634){
  print("TRUE")
}else{
  print(FALSE)
}

# Do this in the while loop

findArmstrong <- function(value = 123){
  totalSum <- 0
  realValue <- value
  convertCharacter <- as.character(value)
  magnitude <- nchar(convertCharacter)
  
  while(value != 0){
    check <- value %% 10
    value <- as.integer(value / 10)
    totalSum <- totalSum + check ^ (magnitude)
  }
  if (totalSum == realValue){
    return ("This is Armstrong number")
  }else{
     return ("This is not Armstrong number")
  }
}

print(findArmstrong(value = 1634))


#################################################
# Condition, Iteration(loop + While), Function  #
#################################################

