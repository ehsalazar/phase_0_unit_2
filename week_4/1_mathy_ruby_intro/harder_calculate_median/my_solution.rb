# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Jonathan Young.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Define the median method with (array) as its parameter
#  Perminently sort the array.
#  Set midpoint to the length of the array divided by 2
#  If the length of the array modulus 2 is equal to 1
#    return the element of the array at [index midpoint]
#  Else
#    return (the element of the array at [index midpoint minus 1] plus the element of the array at [index midpoint])
#           set to float divided by 2
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