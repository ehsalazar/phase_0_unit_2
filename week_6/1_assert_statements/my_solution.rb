# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Method assert is created to raise an error or "Assertion failed!" statement unless the what is being asserted is true.
# The name variable is set to "bettysue"
# The first call of #assert returns nil because its block hold true that the name variable is equal to "bettysue"
# The second call of #assert returns "Asserstion failed!" because its block equates the name variable to "billybob"

# 3. Copy your selected challenge here

class GuessingGame
  def initialize(answer)
    @answer = answer 
  end
  def guess(num)
    @last_guess = num 
    num == @answer ? :correct : num > @answer ? :high : :low 
  end											
  def solved?
    @last_guess == @answer ? true : false 
  end									  
end

game = GuessingGame.new(21)

# game.guess(7) # => true
# puts game.guess(81) == :high # => true
# puts game.guess(21) == :correct # => true

# 4. Convert your driver test code from that challenge into Assert Statements
 
p assert {game.guess(7) == :low} 	# => nil
p assert {game.guess(81) == :high}	# => nil
p assert {game.guess(21) == :high}	# => `assert': Assertion failed!

# 5. Reflection

# While I was able to convert the driver tests into assert calls, I'm not completely sure of the benefit. It seems just 
# as easy to write true or false driver test as assert test. It did help to "p" the #assert calls to help realize the 
# correct assertions would return nil. Perhaps as we delve into more complex outputs, the benefit will become clearer. 

# This was a fairly simple introduction to the assert method and I'm confident in the Learning Competencies. 
