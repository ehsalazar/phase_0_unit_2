# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Use provided method
# Understand how it works

# Initial Solution

def create_word(board, *coords)
  coords.map { |coord| board[coord.first][coord.last]}.join("")  
end

# Refactored Solution

# None needed

# DRIVER TESTS GO BELOW THIS LINE

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"					# => true 
puts create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"							# => true
puts create_word(boggle_board, [3,0], [3,1], [2,2], [3,2]) == "talk"					# => true
puts create_word(boggle_board, [2,2], [1,1], [2,1], [3,1], [3,0], [2,0]) == "locate"	# => true
puts create_word(boggle_board, [0,1], [1,1], [2,1], [3,2], [3,3], [2,3]) == "rocker"	# => true

# Reflection 

# Makes sense. The create_word method takes a minimum of two parameters (the board, the coordinates). The map method then
# loops thought the inputted coordinates and creates a new array starting with the first coordinate and finishing with the
# last. The join method takes this new array and outputs a string.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Define the get_row method that takes two parameters (the board, the row)
#   return index [row] of board array
# end get_row method

# Initial Solution

def get_row(board, row)
  board[row]
end

# Refactored Solution

# None needed

# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 1) == ["i", "o", "d", "t"] 	# => true
p get_row(boggle_board, 4) == nil					# => true
p get_row(boggle_board, 0) == ["b", "r", "a", "e"]	# => true

# Reflection 

# By having both the board and row as parameters, the get_row method can be super simple. You are basically just asking for
# a specific index of the array. 

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution

def get_col(board, col)
  board.map {|arr| arr[col]}
end

# Refactored Solution

# None needed

# DRIVER TESTS GO BELOW THIS LINE

p get_col(boggle_board, 3) == ["e", "t", "r", "e"]  # => true
p get_col(boggle_board, 6) == [nil, nil, nil, nil]  # => true
p get_col(boggle_board, 0) == ["b", "i", "e", "t"]  # => true

# Reflection 

# Having worked with arrays last week made this challenge that much simpler. I will say however that I went off the README
# instructions slightly. I used two parameters, a board and either a row or column for the second and third functions. Without
# the board parameter, you would have to set a global variable within the method to access the original array. That would
# then greatly limit the usability of the code. With two parameters, the methods can be used on any board the player was using.

# I didn't stray from the instructions on the numbering of rows and columns. As such, the first row is actually row 0. If 
# you wanted to make the methods more intuitive for a non-programming person, you could easily adjust. So that if get_row(1)
# was called, it could return array[0] rather than array[1]. 

# Overall this was a fun challenge. It wasn't overly complicated but it also had us working on something I could logically 
# associate with outside of programming. I feel confident in the Learning Competencies and found no aspect tedious. 
