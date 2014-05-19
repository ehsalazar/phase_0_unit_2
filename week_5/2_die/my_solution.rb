# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: The creation of a new die with the parameter of an array of (labels)
# Output: die.side returns the number of labels or elements in the array
#         die.rol returns a random element from the labels array
# Steps:

# create Die class
#   define initialize method that take an array as its parameter (labels)
#     unless the array has more than one element
#       raise an ArgumentError "array must include at least one element"
#     end unless statement
#     set instance variable @sides equal to the size of the labels array
#     set instance variable @labels equal to labels
#   end initialize method
#
#   define the sides method
#     return @sides
#   end sides method
#
#   define the roll method
#     return @labels.sample
#   end roll method
# end class


# 3. Initial Solution

class Die
  def initialize(labels) 
    unless labels.empty? == false
      raise ArgumentError.new("array must include at least one element")
    end   
    @sides = labels.size
    @labels = labels
  end

  def sides
    @sides
  end

  def roll
    @labels.sample
  end
end

# 4. Refactored Solution

class Die
  attr_reader :sides # Eliminates the need to create a sides method that returns @sides
  def initialize(labels)
    raise ArgumentError.new("array must include at least one element") unless labels.empty? == false # Raises an error
    @sides = labels.size # Creates instance variable @sides for all new members of the Die class
    @labels = labels # Creates instance variable @labels for all new members of the Die class
  end
  def roll
    @labels.sample # Returns a random element from the labels array
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(["A", 2, "c", 4, "D", 6])
puts die.sides # => 6
puts die.roll # => one of the six elements from the array

puts die.sides > 1 # => true
puts die.sides == 6 # => true
puts ["A", 2, "c", 4, "D", 6].include?(die.roll) # => true

# 5. Reflection 
