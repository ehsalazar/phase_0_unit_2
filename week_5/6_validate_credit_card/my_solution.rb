# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: A 16 digit credit card number
# Output: True if the card is valid and false if it's not
# Steps:

# Create a CreditCard class
#   define the initialize method taking ine parameter (card number)
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

# Don't forget to check on intialization for a card length
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






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
