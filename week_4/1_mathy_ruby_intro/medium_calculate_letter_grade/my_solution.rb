# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Create a method `get_grade` that accepts an `Array` of test scores.  Each score in the array should be between `0` and `100`, where
# `100` is the max score.
# Compute the average score and return the letter grade as a `String`, i.e., `'A'`, `'B'`, `'C'`, `'D'`, or `'F'`.

# Define the get_grade method with (array) as its parameter.
#   Set sum equal to 0.
#   Iterate through Array using the each method passing a block {|index| sum is equal to sum plus index}
#   Output sum.
#   Set average equal to the sum as a float divided by the length of the array.
#   Create a case for average.
#     When average is between 90 and 100 then output "A".
#     When average is between 80 and  90 then output "B".
#     When average is between 70 and  80 then output "C".
#     When average is between 60 and  70 then output "D".
#     When average is between  0 and  60 then output "F".
#     Else error.
#   End case.
# End method.

# 2. Initial Solution

def get_grade(array)
  sum = 0
  array.each {|i| sum += i}
  sum
  average = sum.to_f / array.length
  case average
    when 90..100 then "A"
    when 80..90 then "B"
    when 70..80 then "C"
    when 60..70 then "D"
    when 0..60 then "F"
    else "error"
  end
end

# 3. Refactored Solution

# Simplified the average by using the enumerbale inject method. I could refactor farther to have the
# case = array.inject(:+).to_f / array.length but felt it was easier to understand this way.

def get_grade(array)
  average = array.inject(:+).to_f / array.length
  case average
    when 90..100 then "A"
    when 80..90 then "B"
    when 70..80 then "C"
    when 60..70 then "D"
    when 0..60 then "F"
    else "error"
  end
end

# 4. Reflection

# Having worked on a similar challenge in the past made this pretty straight forward. I first solved for 
# the average then converted that into the  letter grade. I used a case rather the if/elsif to simplify 
# the process.

# I’m confident with the Learning Competencies. I continue to enjoy the testing process and thinking about 
# overcoming the errors prior to writing any code. 