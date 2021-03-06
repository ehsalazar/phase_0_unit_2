# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Write a method `mode` which takes an `Array` of numbers or strings as its input and returns an `Array` of the most frequent values.
# If there's only one most-frequent value, it returns a single-element `Array`.

# Define the mode method with (array) as its parameter.
#   Create count as a new Hash set to 0
#   Loop through the array using the each method and do |index|
#     count[index] is equal to count[index] plus 1
#   End loop
#   Create mode_array set equal to an empty array.
#   Loop through the count hash using the each method and do |key, value|
#     If the value is equal to the count values max
#       Shovel the key into the mode_array
#     End if statement
#   End loop
#   Output the mode_array sorted by highest occurrence.
# End method 


# 2. Initial Solution

def mode(array)
  count = Hash.new(0)
  array.each do |i|
  	count[i] += 1
  end
  mode_array = []
  count.each do |k, v|
  	if v == count.values.max 
  	  mode_array << k
  	end
  end
  mode_array.sort 
end

# 3. Refactored Solution

def mode(array)
  count = Hash.new(0)
  array.each {|i| count[i] + 1}
  mode_array = []
  count.each {|k, v| mode_array << k if v== count.values.max}
  mode_array.sort
end

# 4. Reflection

# Working on this challenge was enjoyable. The easy and medium challenges were rather quick but this one took a bit 
# more thought and research. I liked that. At first I wasn't sure how to keep track of each element in the array and 
# count for frequency. I came across the hash and was happy I could use it to track this. Once I had the hash built, 
# then I had to figure out how to loop through it and output the key or elements that had the highest frequencies. 

# I continue to enjoy the testing process and looking at the specific error messages. That helped point me in the right 
# direction. I’m confident in the Learning Competencies and fell like this challenge pushed me more then the first two.
