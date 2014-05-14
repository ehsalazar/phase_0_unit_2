# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Make a method that takes an array of names and outputs a list of accountability groups for three different units. 
# You should try to get everyone into an accountability group of 4, but it's your decision how to deal with cohorts 
# not easily divisible by four.

# Input: Boots in Purple Martins, Salamanders, and Red-Spotted Newts
# Output: Accountability groups of ideally 4 students each repeated but shuffled for three units.
# Steps:



# 3. Initial Solution




# 4. Refactored Solution








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

  it "if array % 4 == 0, divides into equal groups" do
  	accountability_groups(array_1).should eq "2 groups of 4"
  end

  it "if array % 4 == 1, divides into groups of four with one group of five" do
  	accountability_groups(array_2).should eq "1 group of 4 and 1 group of 5"
  end

  it "if array % 4 == 2, divides into groups of four with two group of five" do
  	accountability_groups(array_3).should eq "2 groups of 5"
  end

  it "if array % 4 == 3, divides into groups of four with one group of three" do
  	accountability_groups(array_4).should eq "2 groups of 4 and 1 group of 3"
  end
  
end


# 5. Reflection 


