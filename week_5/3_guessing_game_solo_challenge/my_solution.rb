# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: The creation of a new game with a single parameter (integer) which is the correct answer
# Output: If game.guess is to low, return :low; if game.guess is to high, return :high; if correct, return :correct;
#         If game.guess is correct, game.solved? returns true, otherwise, returns false.
# Steps:

# Create a GuessingGame class
#   define the initialize method that takes one parameter (answer)
# 	  set the instance variable @answer equal to answer
# 	end initalize
#
# 	define the guess method that takes one parameter (number)
# 	  set the instance variable @last_guess equal to number
# 	  if number is equal to the value of @answer
# 		return :correct
# 	  else if number is greater than the value of @answer
# 		return :high
# 	  else
# 		return :low
# 	  end if statement
# 	end guess
#
#   define the solved? method
# 	  if the value of @last_guess equals the value of @answer
# 		return true
# 	  else
# 		return false
# 	  end if statement
#   end solved?
# end class

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    @last_guess = num
    if num == @answer 
      :correct
    elsif num > @answer
      :high
    else
      :low
    end
  end

  def solved?
    if @last_guess == @answer
      true 
    else
  	  false
    end
  end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(21)

puts game.guess(7) == :low # => true
puts game.guess(81) == :high # => true
puts game.guess(21) == :correct # => true





# 5. Reflection 
