

# Create the variable

number1 <- 10 # This is the way we can assign the variable using "<-"
number2 <- 20 # This is the way we can assign the variable using "<-"

print(number1)
print(number2)

# Exception: You can also use "=" but it is not recommended to use for assigning the variables

number1 = 10
number2 = 20

print(number1)  # Without there is no any error
print(number2)  # Without there is no any error


# Situation based print arguments

for (index in 1:10){
  print(index)  # In this case we should use "print" operation 
}

# Concatenate element

first_name <- "Atikul Islam"
last_name  <- "Sajib"


full_name = paste(first_name, last_name)

cat(full_name)


# Use concat again

number1 = 10
number2 = 20

result = number1 + number2


cat("Your number1 is: ", number1, "Your number2 is: ", number2)


cat("Your result: ", result)



# Check it again


first_name <- "Atikul Islam"
last_name <- "Sajib"
age <- 18

cat("Your full name is ", paste(first_name, last_name), " and your age is ", age)

if (age > 15){
  cat("You are teengar")
}else{
  print("ERROR")
}


# Do the sum

sum <- 0

for (i in 1:10){
  sum <- sum + i
}

cat("The result is: ", sum)



number <- 12

x1 = number %% 10
x2 = number /10


cat("The value of x1 ", x1, " and the value of x2 ", x2)

