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

class Die
  attr_reader :sides # Eliminates the need to create a sides method that returns @sides
  def initialize(sides) 
    raise ArgumentError.new("number of sides must be greater than 1") unless sides > 0  # Raises an error
    @sides = sides # Creates an instance variable for all new members of the Die class
  end
  def roll
    rand(1..sides) # Returns a random number between 1 and sides inclusively
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(3) # Creates die as a new member of the Die class with 3 sides

puts die.sides # => 3
puts die.roll # => a number between 1 and 3

puts die.sides > 1 # => true
puts die.sides == 3 # => true
puts die.roll < 4 # => true

# 5. Reflection 

# I somehow feel more comfortable with the topic of classes and modules. I had previously spent a good amount of time
# working through Codecademy's Ruby Object I and Object II lessons, which seems to have helped. With that, this challenge
# was rather straight forward. 

# The only bit of working I had to process through was exactly where and how to raise the ArgumentError. After trying for
# over an hour moving it to different locations and using alternative statements, I realized that I had misspelled 
# "argument." It's the simple mistakes!

# I feel confident in this lessons Learning Competencies. I'm glad we are moving into classes and will be working on
# building more complex objects and programs.
