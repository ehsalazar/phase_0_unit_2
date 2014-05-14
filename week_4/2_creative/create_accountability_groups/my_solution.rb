# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Make a method that takes an array of names and outputs a list of accountability groups for three different units. 
# You should try to get everyone into an accountability group of 4, but it's your decision how to deal with cohorts 
# not easily divisible by four.

# Input: Boots in Purple Martins, Salamanders, and Red-Spotted Newts
# Output: Accountability groups of ideally 4 students each repeated but shuffled for three units.
# Steps:

# Define the accountabilty_groups methed taking (array) as its parameter
#   Create a groups object that is equal to an empty array
#   Permanently shuffle the array.
#   Slice array down into sets of 4, passing a block that looks at each set and then shovel those sets into groups array
#   If the last set in groups array is less than 3
#     Set index to 0
#     Loop through groups array until the index is greater than the size of last set.
#       Groups|index| gets shoveled the last element of the last set using pop
#       Increment index by 1
#     End loop
#   End if statement
#   Use enumerable method delete_if on groups passing a block that looks at each set and executes if the set sixe is equal to 0.
#   Output or return the groups
# End method.

# 3. Initial Solution

def accountability_groups(array)
  groups = []
  array.shuffle!
  array.each_slice(4) {|set| groups << set} 
  if groups[-1].size < 3
    i = 0
    until i > groups[-1].size
      groups[i] << groups[-1].pop
      i += 1
    end
  end
  groups.delete_if {|set| set.size == 0}
  p groups
end

# 4. Refactored Solution

def accountability_groups(array)
  groups = []
  array.shuffle.each_slice(4) {|set| groups << set} 
  if groups[-1].size < 3
    i = 0
    groups[-1].size.times {groups[i] << groups[-1].pop}
    i += 1
  end
  groups.delete_if {|set| set.size == 0}
  p groups
end

# 1. DRIVER TESTS GO BELOW THIS LINE

purple_martins = 	["Ariel Fogel", "Hethe Berg", "Premila Anand", "Brian Junio", "John Akers", "Chandler Smith", "Gannon Curran",
				  	"Tony Leung", "Arik Gadye", "Allison Reilly", "Justin Harnoss", "Morgan O'Leary", "Puru Dahal", "Alex White",
				  	"Michele Murphy", "Matthew Darin", "Steven Leu", "Patrick Reynolds", "Lauren Kroner", "Alber Alquisola",
				  	"Ernie Salazar", "Jared Chevalier", "William Pangestu"]

salamanders = 		["Quy Tran", "Ravi Patel", "Issac Keith", "Max Diener", "Samuel Clements", "Francisco Scala", "Ann Lin", 
					"Maddison Brusman", "James Miller", "Ryan Spencer", "Ismail Kalimi", "Steve Loar", "Joseph Webb", "Darrel Jones",
					"James Walker", "Sara Chen", "Praniti Sinha", "Andrew Adams", "Tanner Blumer", "Jonathan Young", "David Hwang",
					"Spencer Zhang", "Jeremy Wong", "Angela Kosek", "Adrian Tawadros", "Marek Pyczkowski"]

red_spotted_newts =	["Rootul Patel", "Hilary Barr", "Alan Flornedo", "Cassie Moy", "Stephen Estrada", "Austin Hay", "John Berry",
					"Anthony Edwards", "Farheen Malik", "Daniel Deepak", "RJ Arena", "Justin Lee", "Michael Weiss", "David Sin",
					"Julius Jung", "Fahia Mohamed", "Molly Huerster", "Eric Hou", "Avi Fox-Rosen", "Joel Yawili", "Dylan Richards",
					"Kaitlyn La", "Derek Siker", "Dylan Krause"]

describe 'accountability_groups' do 
  let(:array_1) {[1, 2, 3, 4, 5, 6, 7, 8]}
  let(:array_2) {[1, 2, 3, 4, 5, 6, 7, 8, 9]}
  let(:array_3) {[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}
  let(:array_4) {[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]}

  it "is defined as a method" do
    defined?(accountability_groups).should eq 'method'
  end

  it "requires a single argument" do
    method(:accountability_groups).arity.should eq 1
  end

  it "shuffled the original array" do
    accountability_groups(array_1).should_not eq [[1,2,3,4],[5,6,7,8]]
  end

  it "if array % 4 == 1, divides into groups of four with one group of five" do
  	accountability_groups(array_2).size.should eq 2
  end

  it "if array % 4 == 3, divides into groups of four with one group of three" do
  	accountability_groups(array_4).size.should eq 3
  end
  
end


# 5. Reflection 


