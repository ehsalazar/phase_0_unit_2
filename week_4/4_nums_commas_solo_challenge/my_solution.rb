# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? A random integer
# What is the output? (i.e. What should the code return?) A comma-seperated integer, i.e., 1,000,000
# What are the steps needed to solve the problem?

# Define separate_comma method that takes one parameter (integer)
#   num_to_string is equal to integer converted to a string
#   length is equal to num_to_string's length
#   if length is greater than 3
#     index is equal to 1
#     until index is greater than (length minus 1) divided by 3
#       num_to_string is inserted ((at position length-(3 times index)), "comma")
#       index is equal to index plus one
#     end until loop
#   end if statement
#   return num_to_string
# End

# 2. Initial Solution

def separate_comma(int)
  num_to_string = int.to_s #converts integer to string
  length = num_to_string.length #capture length of string prior to any commas being added
  if length > 3 #if in the thousands or higher
    i = 1
    until i > (length - 1)/3 #need to loop one time for each comma needed
      num_to_string.insert(length-3*i, ",") #insert comma starting from the end of the string toward the start of string.
      i += 1
    end
  end
  num_to_string #return the string with commas in place
end

# 3. Refactored Solution

def separate_comma(int)
  num_to_string = int.to_s
  length = num_to_string.length
  i = 1
  until i > (length - 1)/3 
  	num_to_string.insert(length-3*i, ",")
  	i += 1
  end
  num_to_string
end

# 4. Reflection 