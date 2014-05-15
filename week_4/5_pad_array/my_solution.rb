# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Alex White.

# 1. Pseudocode

# What is the input? An Array
# What is the output? (i.e. What should the code return?) A new padded array.
# What are the steps needed to solve the problem?

# Call class Array which will take two methods.
#   Define pad destructive taking 2 parameters (expected length, value to be inserted (set to nil if no value given))
#     (Expected length - length of self) times do
#       Self concatenate with (value to be inserted)
#     End loop
#     Return self
#   End method
#   Define pad taking 2 parameters (expected length, value to be inserted (set to nil if no value given))
#     Self is duplicated then calls the pad! method to execute
#   End method
# End class

# 2. Initial Solution

class Array
  def pad!(n, v = nil)
  	(n - self.length).times do
  	  self.push(v)
    end
    self
  end
  def pad(n, v = nil)
  	self.dup.pad!(n, v)
  end
end

# 3. Refactored Solution



# 4. Reflection 

