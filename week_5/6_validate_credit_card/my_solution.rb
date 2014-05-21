# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: A 16 digit credit card number
# Output: True if the card is valid and false if it's not
# Steps:

# Create a CreditCard class
#   define the initialize method taking one parameter (card number)
#     set instance variable @card equal to an array containing each individual integer
#	  unless @card's size is equals 16
#       raise an ArgumentError, "Please enter a 16 digit card number"
#     end unless statement
# 	end initialize
#   define the double digit method
# 	  destructively map through array @card with each index and do |element, index|
# 	  	if it's true that the index is even
#  		  return element times 2 to the array
#       otherwise
# 		  return element to the array
# 		end if statement
# 	  end map loop
#   end double digit method
#   define the card_sum method
# 	  call the array returned from the double digit method
#     join the @card array, iterate through each character and map as integers then add each integer together
# 	end card_sum method
# 	define the check_card method
# 	  if the value returned from the card_sum method is divisible by 10
#       return true
#     otherwise
#       return false
#     end if statement
#   end check_card method
# end class


# 3. Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_num)
    @card = card_num.to_s.chars.map(&:to_i)
    unless @card.size == 16
      raise ArgumentError.new("Please enter a 16 digit card number")
    end
  end
  def double_digit
  	@card.map!.with_index do |e,i|
      if i.even? == true
        e * 2
      else
      	e
      end
  	end 
  end
  def card_sum
  	double_digit
  	@card.join.chars.map(&:to_i).reduce(:+)
  end
  def check_card
    if card_sum % 10 == 0
      true
    else
      false
  	end
  end
end

# 4. Refactored Solution

class CreditCard
  def initialize(card_num)
    @card = card_num.to_s.chars.map(&:to_i) # Creates an array containing each individual integer
    raise ArgumentError.new("Please enter a 16 digit card number") unless @card.size == 16
  end
  def double_digit 
  	@card.map!.with_index {|e,i| i.even? == true ? e*2 : e } # Double the integers in the even numbered indexes
  end
  def card_sum 
  	double_digit
  	@card.join.chars.map(&:to_i).reduce(:+) # Adds each individual integer together
  end
  def check_card
    card_sum % 10 == 0 ? true : false # If the sum is divisible by 10, returns true, otherwise false
  end
end

# Could even refactor farther if separate methods weren't needed for each step

class CreditCard
  def initialize(card_num)
    @card = card_num.to_s.chars.map(&:to_i) # Creates an array containing each individual integer
    raise ArgumentError.new("Please enter a 16 digit card number") unless @card.size == 16
  end
  def check_card
  	@card.map!.with_index {|e,i| i.even? == true ? e*2 : e } # Double the integers in the even numbered indexes
  	@card.join.chars.map(&:to_i).reduce(:+) % 10 == 0 ? true : false # Adds each individual integer together and
  end																 # if the sum is divisible by 10 return true
end

# 1. DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(4408041234567893)
p card.check_card == true 				# => true

card = CreditCard.new(4408041234567892)
p card.check_card == false				# => true

card = CreditCard.new(440804123456789) 	# => should return the Argument Error

# 5. Reflection 

# This was one of the more difficult challenges for the week. It helped greatly to break down the steps into their own
# individual methods. In other words, figure out small blocks and then get them to work together. I had to do some
# research for this one. I knew out of the gate, I wanted to convert the entered number into an array but ultimately 
# I would need it to be an array of integers not string representations of the numbers. The next big obstacle to 
# research was how best to sum up the individual elements of the array while accounting for double digit elements.

# This challenge helped me better understand the process of linking or chaining methods. While I'm sure their are
# other ways to solve for each step, I liked the simplicity of the chain. Being of course that I could figure out
# each link in said chain.

# I feel confident in this challenges Learning Competencies. I enjoyed being pushed by this challenge and having to 
# figure out new ways to accomplish steps. I continue to find the test super helpful in 
# building the code as I go. I found no aspect tedious.
