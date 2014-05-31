# U2.W6: Refactoring for Code Readability

# I worked on this challenge with Gannon Curran.

# Original Solution

class CreditCard
  
  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new("Card number must be exactly 16 digits.")
    end

    # technique from S.O. post:
    # something(&:foo)
    # the &: part is a shortcut for:
    # something { |i| i.foo }
    @card_number = card_number.to_s.chars.map(&:to_i)
    
  end
  
  
  def check_card
    @card_number.reverse!  # start from the back, work toward the front
    i = 0  # initialize a counter to track element index numbers
    @card_number.each do |a|  #iterate through each element of the array
      if i % 2 != 0  # check to see if we have an odd index position (because we're reversed)
        @card_number[i] = a * 2  # double the element value
      end
      i += 1 # increment counter
    end
    @card_number.reverse!  # re-reverse the order so we're back to normal
    
    # now we'll add all the digits together, and check for divisibility by 10
    num_sum = 0  # initialize a variable to track total of numbers
    # for each element in the array, take each character, convert to integer, add to num_sum
    @card_number.each { |el| el.to_s.each_char { |chr| num_sum += chr.to_i } }
    num_sum % 10 == 0
  end
  
  
end

# Refactored Solution

class CreditCard
  attr_reader :card_number
  def initialize(card_number)
    @card_number = card_number.to_s.chars.map(&:to_i)
    validate_card_num_length
  end
  def validate_card_num_length
    raise ArgumentError.new("Card number must be exactly 16 digits.") unless @card_number.size == 16
  end
  def check_card
    card_number.map!.with_index { |element, i| i.even? == true ? element * 2 : element } 
    card_number.join.chars.map(&:to_i).reduce(:+) % 10 == 0
  end
end

# DRIVER TESTS GO BELOW THIS LINE

def assert(test_description)
  if yield == true
    puts "Passed: " + test_description.to_s
  else
    puts "Failed: " + test_description.to_s
    raise "Assertion failed!"
  end
end

assert("Card Number 4408041234567893 is good") { CreditCard.new(4408041234567893).check_card == true }
assert("Card Number 4408041234567892 is bad") { CreditCard.new(4408041234567892).check_card == false }
CreditCard.new(440804123456789) # Will raise the ArgumentError

# Reflection 

# This was a great challenge. It helped working on it with a partner. We looked at Gannon's original solution for
# refactoring consideration. The original solution was understandable but included a few opportunities to simplify and 
# condense. Before jumping into the refactoring, we discussed the POODR ideals of creating objects independent for them-
# selves. With that in mind, we first decided to break the ArgumentError out into its own method and then call that method
# within the initialize method. Next, we decided that the business with reversing the card number was unneeded. We then
# utilized a different looping approach using #map! and #with_index rather than #each and a lengthy block. Finally, we
# simplified the sum steps into one line chained with the test for total sum divisibility by 10. 

# Overall, I think we did a great job and both learned new tools in the process. I'm confident in this challenges Learning
# Competencies. Although it took us about an hour and a half, I found no aspects tedious. When we did encounter bugs, we 
# learned and overcame them. 
