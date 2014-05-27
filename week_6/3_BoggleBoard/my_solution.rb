# U2.W6: Create a BoggleBoard Class

# I worked on this challenge by myself.

# 2. Pseudocode

# Create class BoggleBoard
#   attribute reader the grid symbol
#   define the initialize method taking one parameter (grid)
#     set instance variable grid to value grid
#   end initialize
#   define create_word method taking any number of parameters (*coordinates)
#     loop through the coordinates passing the block {|coordinates| grid array[first coord][last coord] and join elements
#   end create_word
#   define get_row method taking one parameter (row)
#     grid array [row] and join element to string
#   end get_row
#   define get_col method taking one parameter (column)
#     loop through the grid array using map passing block {|array| array[column]} and join elements to string
#   end get_col
# end class

# 3. Initial Solution
class BoggleBoard
  attr_reader :grid

  def initialize(grid)
  	@grid = grid
  end
 
  def create_word(*coords)
    coords.map { |coord| grid[coord.first][coord.last]}.join 
  end

  def get_row(row)
    grid[row].join
  end

  def get_col(col)
    grid.map {|arr| arr[col]}.join
  end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) # => "dock"

p boggle_board.get_row(0) # => "brae"
p boggle_board.get_row(1) # => "iodt"
p boggle_board.get_row(2) # => "eclr"
p boggle_board.get_row(3) # => "take"

p boggle_board.get_col(0) # => "biet"
p boggle_board.get_col(1) # => "roca"
p boggle_board.get_col(2) # => "adlk"
p boggle_board.get_col(3) # => "etre"

# 4. Refactored Solution

# The methods that built the class were already refactored. As such, the initial solution is already clean and simple.
# I can't see any opportunities to refactor further. 

# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

# create driver test code to retrieve a value at a coordinate here:

assert {boggle_board.grid[0][1] == "r"}
assert {boggle_board.grid[1][1] == "o"}
assert {boggle_board.grid[2][1] == "c"}
assert {boggle_board.grid[3][2] == "k"}

# implement tests for each of the methods here:

assert {boggle_board.create_word([2,2], [1,1], [2,1], [3,1], [3,0], [2,0]) == "locate"}
assert {boggle_board.get_row(3) == "take"}
assert {boggle_board.get_col(1) == "roca"}

# 5. Reflection 

# This was a pretty simple challenge. Having already worked with the methods last week that went into building this class
# helped it all make that much more sense. I did like the concept of moving from procedural programming into object-oriented
# programming. It seems more "real world" and the concepts seem easier to grasp. Keeping it simple and D.R.Y. was in the
# front of my mind as I worked to get a single letter from one coordinate. Rather than building a whole new method, I used 
# the attribute reader to access the grid. That made calling one coordinate super simple. I will likely come back to this 
# challenge and try to work through the bonus item for further learning.

# Overall, I feel confident in the Learning Competencies and enjoyed the challenge. It didn't take much reworking to get
# everything to run smoothly within the new class. I'm also becoming more comfortable with the assert method of testing.
