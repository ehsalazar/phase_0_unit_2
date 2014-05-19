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
# 	end initialize
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

class GuessingGame
  def initialize(answer)
    @answer = answer # Creates an instance variable @answer with a value of answer
  end
  def guess(num)
    @last_guess = num # Creates an instance variable @last_answer with a value of num
    num == @answer ? :correct : num > @answer ? :high : :low # If num is equal to the value of @answer is true, return :correct
  end											# otherwise, if num is greater than @answer, return :high, if not, return :low
  def solved?
    @last_guess == @answer ? true : false # If the value of @last_answer is equal to the value of @answer, return true
  end									  # otherwise return false
end

# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(21)

puts game.guess(7) == :low # => true
puts game.guess(81) == :high # => true
puts game.guess(21) == :correct # => true

# 5. Reflection 

# This challenge took a bit thinking and experimenting than Die 1 and 2. It was rather simple to establish if the guess was low,
# high or correct. To establish solved? was harder. Reading through the rspec test, I figured I had to access part of the guess
# method to be used within the solved? method. After some experimenting, I came up with declaring an instance variable in one
# method that could be used in the second method. It seems to have worked. 

# Although my solution is rather simple (no loops or enumerable methods), I do feel confident in the Learning Competencies. I was 
# able to create the class and its corresponding instance methods and variables. I was also able to pass all of the rspec tests as
# well as the driver tests I created. I found the challenge stimulating and interesting with no tedious components. I'm looking
# forward to the rest of the week's object challenges. 

