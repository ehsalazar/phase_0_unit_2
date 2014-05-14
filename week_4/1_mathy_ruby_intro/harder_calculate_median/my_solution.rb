# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Jonathan Young.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Write a method `median` which takes an `Array` of numbers as its input and returns the median value.

# Define the median method with (array) as its parameter
#  Permanently sort the array.
#  Set midpoint to the length of the array divided by 2
#  If the length of the array modulus 2 is equal to 1
#    return the element of the array at [index midpoint]
#  Else
#    return (the element of the array at [index midpoint minus 1] plus the element of the array at [index midpoint])
#    set to float divided by 2
#  End if statement
# End method

# 2. Initial Solution

def median(array)
  array.sort!
  midpoint = (array.length / 2)
  if array.length % 2 == 1
    array[midpoint]
  else
    (array[midpoint -1] + array[midpoint]).to_f / 2
  end
end

# 3. Refactored Solution

def median(array)
  array.sort!
  midpoint = (array.length / 2)
  array.length % 2 == 1 ? array[midpoint] : (array[midpoint -1] + array[midpoint]).to_f / 2
end

# 4. Reflection 

# I was originally going to skip this challenge but while working in pair programming, we decided to give it a shot. 
# We knew what we wanted and could articulate it but had to work on executing the actual code. 

# Having worked on the a similar challenge last week, I first thought about ways in which we could convert the JavaScript 
# solution into Ruby. I was able to get the bones of the method to work but kept failing on the last two tests. It was 
# clear what was failing, the expected output was a float and my method was outputting an integer. That said, it took a 
# good hour of experimenting and researching to make it finally work. 

# I’m confident in the Learning Competencies. I’m happy that we decided to give this one a try. It was much harder than 
# the previous mathy challenges but I learned from it. The only tedious portion of the mathy challenges in general was 
# stopping after each release to commit the changes. I just wanted to power on to the next section.
