# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Write a method `total` which takes an `Array` of numbers as its input and returns their total (sum).

# Define the total method with (array) as its parameter.
#   Set sum equal to 0.
#   Iterate through Array using the each method passing a block {|index| sum is equal to sum plus index}
#   Output the sum.
# End the method.

# Then, write another method `sentence_maker` which takes an `Array` of strings or numbers and returns 
# each element joined into a sentence. 
# Note: The first letter should be capitalized and the sentence should end with a period.

# Define the sentence_maker method with (array) as its parameter.
#   Capitalize the first string in the array.
#   Concatenate a period to the last string in the array.
#   Use the join method on the array with a space parameter.
#   Output the new sentence.
# End the method.

# 2. Initial Solution

def total(array)
  sum = 0
  array.each {|i| sum += i}
  sum
end

def sentence_maker(array)
  array[0].capitalize!
  array[array.length - 1] << "."
  array.join(" ")
end



# 3. Refactored Solution

# The total method can be simplified using the enumerables inject method with a symbol passed in.

def total(array)
  array.inject(:+)
end

# The sentence_maker method can be simplified by joining all the calls into one line.

def sentence_maker(array)
  array.join(" ").capitalize << "."
end


# 4. Reflection 

# These two were pretty straight forward. I was able to establish the pseudocode and initial solution 
# rather quickly. I had to research and play a bit with the refactored code but in the end, it to 
# passed all tests. 

# One challenge that remains is with pseudocode. When I see what I’m testing for, I’m inclined to write 
# the initial code first. I then find myself converting that initial code into the pseudocode. 

# Though I went about it differently, I do feel confident in the Learning Competencies. I’m becoming 
# more and more familiar and comfortable with the test aspect.