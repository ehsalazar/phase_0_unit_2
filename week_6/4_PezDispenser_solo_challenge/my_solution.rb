# U2.W6: PezDispenser Class from User Stories

# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.

# 2. Pseudocode

# Create a PezDispenser method
#   set attribute reader to flavors symbol and count symbol
#   define the initialize method that takes one parameter (array of flavors)
#     set the instance variable flavors to flavors
#     set the instance variable count to the value of zero
#   end initialize
#   define the pez_count method
#     set count to the value of the size of the flavors array
#   end pez_count
#   define a get_pez method
#     pop and return the last element of the flavors array
#   end get_pez
#   define an add_pez method that takes one parameter (a string of a flavor)
#     unshift the parameter string to the front of the flavors array
#   end add_pez
#   define a see_all_pez method
#     return the contents of the flavors array
#   end see_all_pez
# end class

# 3. Initial Solution

class PezDispenser
  attr_reader :flavors, :count
  def initialize(flavors)
    @flavors = flavors
    @count = 0
  end 
  def pez_count
    count = flavors.size
  end
  def get_pez
    flavors.pop
  end
  def add_pez(flavor)
    flavors.unshift(flavor)
  end
  def see_all_pez
    flavors
  end
end

# 4. Refactored Solution

# The refactored code is only one line short than the original but I was able to eliminate an entire method by building
# the instance variable pez_count into the initialize method and attr_reader. 

class PezDispenser
  attr_reader :pez_count, :flavors
  def initialize(flavors)
    @flavors = flavors
    @pez_count = flavors.size
  end 
  def get_pez
    @pez_count -= 1
    flavors.pop
  end
  def add_pez(flavor)
    flavors.unshift(flavor)
    @pez_count += 1
  end
  def see_all_pez
    flavors
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!" 

assert {super_mario.pez_count == flavors.size}
assert {flavors.size == 9}

puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 

assert {super_mario.see_all_pez == flavors}

puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"

assert {super_mario.pez_count == flavors.size}
assert {flavors.size == 10}

puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

assert {super_mario.pez_count == flavors.size}
assert {flavors.size == 9}
assert {super_mario.see_all_pez == flavors}

# 5. Reflection 

# This was a fun challenge. To be honest, it wasn't as hard as I thought it was going to be. Perhaps I'm just further 
# along in my learning than I perceive myself to be. A couple of things that I consider now that the challenge is complete.

# First, I'm not entirely sure which code is "better", the initial or refactored. I find the initial solution to be 
# condense and easy to understand. The refactored code is almost equal in size but eliminates a whole method. However, the
# #add_pez and #get_pez methods become slightly more complex. Is it worth it?

# Second, I could only come up with two assert tests. The original flavors array is modified multiple times, both in 
# content and size. As such, I called the same assert test multiple times but in different places to account for those 
# changes. I also added a third assert test that was more concrete which more explicitly shows the change in at least the
# size of the flavors array. 

# I feel confident in the Learning Competencies for this challenge. In the past I have struggled to complete the pseudocode
# prior to jumping into actually trying to write the initial solution. This time however, I utilized the user stories to
# successfully flesh out the pseudocode first. 
