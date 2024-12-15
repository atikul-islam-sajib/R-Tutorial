# How can I write the if else
# Find the maximum number between two numbers
number1 <- 10
number2 <- 20

if (number1 > number2){
  paste(number1, " is greater than ", number2)
}else{
  paste(number2, " is greater than ", number1)
}

# Find the CGPA
score <- 70

if (score >= 55 & score < 60){
  print("Your grade is D")
}else if (score >= 60 & score < 70){
  print("Your grade is C")
}else if (score >= 70 & score < 80){
  print("Your grade is B")
}else if (score >= 80 & score < 90){
  print("Your grade is A")
}else if (score >= 90 & score <= 100){
  print("Your grade is A+")
}else{
  print("Your grade is F")
}

# Find the leap year
year <- 2015

if (year %% 4 == 0){
  paste(year, " is a leap year")
}else{
  paste(year, " is not a leap year")
}