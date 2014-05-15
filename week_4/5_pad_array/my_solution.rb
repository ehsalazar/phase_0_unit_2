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

class Array
  def pad!(n, v = nil)
  	(n - self.length).times {self.push(v)}
  	self
  end
  def pad(n, v = nil)
  	self.dup.pad!(n, v)
  end
end

# 4. Reflection 

# I worked with a pair on this challenge. I thought it would help to make things clearer. While it did, our actual pair
# programming session could barely get beyond one passed test. We were on the right track however and it just took a bit
# more thinking and exploring to solve the challenge. 

# The pieces came together for the destructive method but the non-destructive method was trickier. I kept getting the same
# error or fail test. I googled a bit and figured out that the problem was that despite what I was trying to output, the
# original array had been permanently changed. I learned that what I needed was to make a duplicated or clone of the 
# original array and then call the destructive method on it. That way, the output would match the original array but would 
# in fact be a whole new object.

# I'm confident in the Learning Competencies, especially after working and learning more about destructive and non-destructive.
# I continue to get benefit out of the testing process but some question did arise during my pair programming session. After
# running the test and seeing what it's looking for, is it better to fully flesh out an initial solution or rather build it
# a small component at a time. For example, if the first failed test looks only for a method, then build an empty method.
# Test and hopefully pass then go onto the next failed test and build to that, and so on.
