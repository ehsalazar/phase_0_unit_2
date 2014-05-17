# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? A random integer
# What is the output? (i.e. What should the code return?) A comma-separated integer, i.e., 1,000,000
# What are the steps needed to solve the problem?

# Define separate_comma method that takes one parameter (integer)
#   num_to_string is equal to integer converted to a string
#   length is equal to num_to_string's length
#   if length is greater than 3
#     index is equal to 1
#     until index is greater than (length minus 1) divided by 3
#       num_to_string is inserted ((at position length-(3 times index)), "comma")
#       index is equal to index plus one
#     end until loop
#   end if statement
#   return num_to_string
# End

# 2. Initial Solution

def separate_comma(int)
  num_to_string = int.to_s #converts integer to string
  length = num_to_string.length #capture length of string prior to any commas being added
  if length > 3 #if in the thousands or higher
    i = 1
    until i > (length - 1)/3 #need to loop one time for each comma needed
      num_to_string.insert(length-3*i, ",") #insert comma starting from the end of the string toward the start of string.
      i += 1
    end
  end
  num_to_string #return the string with commas in place
end

# 3. Refactored Solution

def separate_comma(int)
  num_to_string = int.to_s
  length = num_to_string.length
  i = 1
  until i > (length - 1)/3 
  	num_to_string.insert(length-3*i, ",")
  	i += 1
  end
  num_to_string
end

# 4. Reflection 

# OK, this one took me a few days and some math. Originally, I thought about using a case statement depending on the number of 
# elements in the string but it became to verbose. I then started looking at looping options. I knew I wanted to loop once for 
# every comma that would be needed. To calculate the number of loops took some experimenting. I then moved on to the commas. 
# I knew I could use the insert method but I had to figure out when and how the commas would be inserted. Initially, I thought 
# it would be best to reverse the string because I figured the first insert would always be at index 3. 

# The challenge however, was as the commas were inserted, the length changed and I couldn't isolate a fixed index to insert the 
# subsequent commas. I realized I needed to insert the last comma first and first comma last. I threw out the whole reverse idea
# and started again. Once I started thinking about the last comma first, it took again some experimenting and math to calculate
# the index portion of the insert block. Finally, I got it to work.

# Some realizations I discovered in the process. First, I needed to create a variable for the length of the string before jumping 
# into the loop. I couldn't use string.length every time I wanted to because the length would change with each iteration of the 
# loop. Second, in refactoring, I realized I didn't need the original if statement. If the length of the string was less then or 
# equal to three, the resulting calculation in the until boolean would be false and would just be skipped. Also in refactoring, 
# I tried to simplify the whole loop process but when I tried to change the until statement to something else, like a .times 
# method, the whole calculation process would be off.

# Overall I feel confident in the challenges Learning Competencies. While this one was harder, I like what I was able to get out 
# of it. There is likely a simpler solution for this challenge and I look forward to seeing how others solved for it. 

