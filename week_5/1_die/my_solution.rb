# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: The creation of a new die with a single parameter (number of sides)
# Output: die.sides == sides, die.roll == a random number between 1..die.sides
# Steps:

# define Die class
#   define initialize method with one parameter (number of sides)
#     unless sides > 0
#       raise ArgumentError "number of sides must be greater than 1"
#     end argument error
#     set instance variable @sides equal to sides
#   end initialize
#
#   define sides method
#     return instance variable @sides
#   end sides
#
#   define roll method
#     return a random number between 1 and sides
#   end roll
# End class

# 3. Initial Solution

class Die
  def initialize(sides) 
    unless sides > 0
      raise ArgumentError.new("number of sides must be greater than 1")
    end   
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..sides)
  end
end

# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(3) # Creates die as a new member of the Die class with 3 sides

puts die.sides # => 3
puts die.roll # => a number between 1 and 3

puts die.sides > 1 # => true
puts die.sides == 3 # => true
puts die.roll < 4 # => true

# 5. Reflection 