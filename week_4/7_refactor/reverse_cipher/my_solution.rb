# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a # Creates an array called alphabet that is made up of the letters in the alphabet.
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # Creates a new hash. The keys are made up of the letters in 
                                                    # alphabet array. The values are made from rotating the array.
                                                    # i.e., {"a" => "e", "b" => "f", etc}
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # Creates an array of special characters.
    
    original_sentence = sentence.downcase # Takes the inputted sentence and makes it all lowercase.
    encoded_sentence = [] # Creates a new empty array.
    original_sentence.each_char do |element| # Loops through the original inputted sentence going character by character.
      if cipher.include?(element) # Checks to see if the original sentence element matches one of the cipher keys.
        encoded_sentence << cipher[element] # If there was a match, the value associated with that key is pushed into
                                            # the encoded_sentence array.
      elsif element == ' ' # Checks to see if the original sentence element is a space.
        encoded_sentence << spaces.sample # If it was a space, it pushes a random element from the spaces array (a 
                                          # special character) into the encoded_sentence array.
      else 
        encoded_sentence << element # If neither of those are true then just push the element into the encoded_sentence
                                    # array.
      end # End the if statement.
     end # End the original sentence loop.
    
    encoded_sentence.join # Joins the elements of the encoded_sentence array and returns a string. It didn't need 
                          # "return" as it's implicit.
end # Ends the translate_to_cipher method.


# Questions:
# 1. What is the .to_a method doing?
# => It converts something into an array.

# 2. How does the rotate method work? What does it work on?
# => It rotates all of the elements in an array but doesn't shuffle them. If no parameter is passed then it rotates one
# => time in the positive direction. In other words, element at array[1] is now at array[0]. If a parameter is given,
# => then that is the count to rotate. In other words, if array.rotate(4), element at array[4] is now at array[0].

# 3. What is `each_char` doing?
# => It's iterating through each character in a string, much like array.each would iterate through the elements in an array.

# 4. What does `sample` do?
# => It produces a random element from the collection it's called on.

# 5. Are there any other methods you want to understand better?
# => I'm entirely sure what the zip method does. 

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# => It actually looks similar. We chose not to use a hash when we refactored the original cipher code. The only other
# => difference is that the original cipher code altered numbers and this does not.

# 7. Is this good code? What makes it good? What makes it bad?
# => I would say that it is good code. It is clear, easy to read and understand. That said, a good number of variables
# => are created within it. Instead, you might be able to achieve the same outcome by chaining methods rather.


# 1. DRIVER TESTS GO BELOW THIS LINE

# Does this return the same thing every time?
# => It returns something similar but not exactly the same. The only real random element was in converting the spaces
# => into special characters. Otherwise, "I", "want" and "cookies" always returned the same thing.

p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# 5. Reflection 

# Having just completed the Cipher Challenge, this was fairly straight forward. Our refactored cipher code was in-line
# with this reverse cipher code and elements made sense. 

# I'm confident in the Learning Competencies of this challenge. Overall, I found it easy to understand. Commenting out 
# the code helps and is something I need to incorporate into other challenges. 

