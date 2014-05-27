# U2.W6: Drawer Debugger

# I worked on this challenge by myself.

# 2. Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class? => didn't a new one but added to #view_contents and #dump

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? => removes the last item added if no parameter given 
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents = [] # => added this code to actually empty the contents array
    puts "Your drawer is empty."
  end

  def view_contents
  	if @contents.empty? # changed this method to account for the drawer being empty.
  	  puts "Your drawer is empty."
  	else
      puts "The drawer contains:"
      @contents.each {|silverware| puts "- " + silverware.type }
    end
  end

end

class Silverware
  attr_reader :type, :clean # added :clean to be able to confirm if items were clean which would return true : false

# Are there any more methods needed in this class? => added #clean_silverware

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware # => added this method to clean the silverware
  	puts "cleaned the #{type}"
  	@clean = true
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
puts removed_knife.clean

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? => with the array now empty, it should return no items

fork = Silverware.new("fork") # had create a new fork silverware item as it had previously been removed.
silverware_drawer.add_item(fork) # added the new fork to the drawer
silverware_drawer.view_contents # confirmed the fork had been added

fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
silverware_drawer.view_contents # confirmed the fork had been removed
fork.eat

#BONUS SECTION

puts fork.clean # with :clean added to the attr_reader, this will return false

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

assert {silverware_drawer.contents.empty? == true}

silverware_drawer.add_item(Silverware.new("butter_knife"))
silverware_drawer.view_contents

assert {silverware_drawer.contents.empty? == false}

assert {removed_knife.clean == true}
assert {fork.clean == false}

fork.clean_silverware

assert {fork.clean == true}

# 5. Reflection 

# Once I figured out that I would only get one error at a time, I was in business. I could identify what threw the error
# and was able to correct the issue. Sometimes it was simple as adding in a missing 'end' statement and other times it
# required creating a whole new method. I chose to use the assert method to test the code. I do see the ease in writing
# the assert tests and did learn a little more in this challenge to identify which line or assert call threw the error
# without needing to print inspect each call.

# I'm confident in this challenges Learning Competencies. Once I was able to identify where the errors were originating, I
# was able to correct them. I was successful in both creating and passing the tests. I was also able to identify a simple
# solution for the bonus item without having to write a whole new method. Note to self...proper indentation helps alot!
