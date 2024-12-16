# Create a normal function
displayFunction <- function(){print("This function is created for printing Hello World")}
displayFunction()

# Create a function that will return
displayFunction <- function(){return ("This is the function that is returning Hello World")}
displayFunction()

# Create a function that has two arguments
addTwoNumbers <- function(number1, number2){return (number1 + number2)}
print(addTwoNumbers(number1 = 10, number2 = 20))

# Create a function that has two default arguments
addTwoNumbers <- function(number1 = 10, number2 = 20){return (number1 + number2)}
print(addTwoNumbers())
print(addTwoNumbers(20))
print(addTwoNumbers(10, 10))
print(addTwoNumbers(c(1:10)))
print(addTwoNumbers(c(1, 2, 3), 10))

# Create a function that is returning multiple elements
returnMultiple <- function(vector){return (c(sum(vector), mean(vector), median(vector), sd(vector), var(vector)))}
print(returnMultiple(1:10))

# Create a function that would return the lower to upper
toUpperCase <- function(string = "Hello World"){return (toupper(string))}
print(toUpperCase())
print(toUpperCase(string = "Radit Rahaman"))

# Create a nested function
convertCharacter <- function(value = 124){
  if (is.numeric(value)){
    value <- as.character(value)
    charCount <- function(){return (nchar(value))}
    return (charCount)
  }else{"This is not possible as value should be numric"}
}
char <- convertCharacter(value = 123.10)
print(char())

# Create a function that would return the factorial
computeFactorial <- function(number = 10){
  if (is.numeric(number)){
    totalFactoral <- 1
    for (value in 1:number){
      totalFactoral <- totalFactoral * value
    }
    return (totalFactoral)
  }else{return ("Number should be in the format of numeric")}
}
print(computeFactorial(5))
print(computeFactorial(10))

# Create the calculator 
simpleCalculator <- function(type = "+", value1 = 1, value2 = 2){
  if (type == "+"){
    return (value1 + value2)
  }else if (type == "-"){
    return (value1 - value2)
  }else if (type == "*"){
    return (value1 * value2)
  }else if (type == "/"){
    if (value2 == 0){
      return ("Not Possible")
    }else{
      return (value1/value2)
    }
  }else if (type == "%"){
    return (value1 %% value2)
  }else{
    return ("Type should be either +, -, *, /, %")
  }
}

print(simpleCalculator(value1 = 10, value2 = 20, type = "+"))
print(simpleCalculator(value1 = 10, value2 = 20, type = "-"))
print(simpleCalculator(value1 = 10, value2 = 20, type = "*"))
print(simpleCalculator(value1 = 10, value2 = 20, type = "/"))
print(simpleCalculator(value1 = 10, value2 = 20, type = "%"))
print(simpleCalculator(value1 = 10, value2 = 0, type = "/"))
