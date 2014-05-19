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

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 