# Find the vowel from a string
findVowel <- function(string = "Umbrella"){
  stringLower = tolower(string)
  appendVowels <- c()
  
  for (character in unlist(strsplit(stringLower, ""))){
    if (character == "" | character == " "){
      next
    }else if (grep(character, stringLower)){
      appendVowels <- append(appendVowels, character)
    }
  }
  return (c(vowels = appendVowels, totalVowels = length(appendVowels)))
}

print(findVowel("I am Atikul Islam Sajib"))

# Grade system
findGrade <- function(grade = 100){
  if (grade >= 50 & grade < 65){
    return ("D")
  }else if (grade >= 65 & grade < 75){
    return ("C")
  }else if (grade >= 75 & grade < 85){
    return ("B")
  }else if (grade >= 85 & grade < 95){
    return ("A")
  }else if (grade >= 95 & grade <= 100){
    return ("A+")
  }else{
    return ("F")
  }
}

print(findGrade(grade = 75))
print(findGrade(grade = 85))
print(findGrade(grade = 95))

# Create the IF ELSE
number <- 10
if (number > 0){
  print("The number is positive")
}else{
  print("The number is negative")
}

