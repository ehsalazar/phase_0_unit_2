# U2.W4: Cipher Challenge


# I worked on this challenge with William Pangestu.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

def north_korean_cipher(coded_message) # Creating the method with a string as parameter.
  input = coded_message.downcase.split("") # Takes inputted string and downcases all letters and splits each element into an array.
  decoded_sentence = [] # Creating an empty array.
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # The best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d",   # alphabet = ("a".."z").to_a can be used to create an array rather than a hash. You could then iterate
            "i" => "e",  
            "j" => "f", 
            "k" => "g",   # One pro of the hash is easily understood. i.e., "e" shifts to "a"
            "l" => "h",   # A con is the size with 26 different keys and hard coded.
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # Iterating over each element of the input array.
    found_match = false  # This is establishing that none of the input elements have been evaluated.
    cipher.each_key do |y| # This loops through the cipher hash keys.
      if x == y  # Comparing each character from input array to the cipher key. x = element of input, y = hash key
        puts "I am comparing x and y. X is #{x} and Y is #{y}." # Outputting a string identifying what was matched.
        decoded_sentence << cipher[y] # Pushed the cipher value to empty array.
        found_match = true # This is establishing that this particular element has now been evaluated.
        break  # Exiting out of the cipher loop.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # Checking if the input element is a special character.
        decoded_sentence << " " # If it is, it pushes a space into the new array.
        found_match = true # This is establishing that this particular element has now been evaluated.
        break  #Exiting out of the cipher loop.
      elsif (0..9).to_a.include?(x) # Checking if the input element is a number
        decoded_sentence << x #Keeps the number and pushes it into the new decoded array
        found_match = true # This is establishing that this particular element has now been evaluated.
        break # Exiting out of the cipher loop.
      end 
    end # This ends th cipher loop.
    if not found_match  # If found_match is true, i.e., the element has already been evaluated.
      decoded_sentence << x #Push that already evaluated element into the decoded array.
    end
  end # This ends the input loop.
  decoded_sentence = decoded_sentence.join("") # Join the decoded array into a string.
 
  if decoded_sentence.match(/\d+/) # This is looking to see if there are any numbers in the decoded string.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # This is substituting the original number to a fraction of that number.
  end  
  return decoded_sentence # Output the final decoded string.   
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = ("a".."z").to_a
  input.each do |x|
   if cipher.include?(x)
     decoded_sentence << cipher[cipher.index(x)-4]
   elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
     decoded_sentence << " "
   else
    decoded_sentence << x
   end
  end
  decoded_sentence = decoded_sentence.join("")
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) {|n| n.to_i / 100}
  end
  decoded_sentence
end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection

# This was a great challenge to pair on. While we both understood the original code and could comment it out rather quickly, 
# to refactor took more work. We eliminated the large cipher hash by creating an array of the letters of the alphabet. We 
# then looked for opportunities to eliminate aspects that weren't needed or were repetitive. We had to experiment on how to 
# shuffle the cipher 4 letters as well as ensure that special characters would be converted to spaces. In all, it took us a 
# couple of hours but I think we both learned from the experience. 

# I'm confident in the Learning Competencies. Like many of the challenges this week, this took more time that I thought it would 
# but I learned more in the process. The only tedious aspect of the challenge was in debugging our refactored code. Here is where
# four eyes were better than two. Most of the issues were caused by simple mistakes like ensuring we typed decoded_sentence rather 
# than decoded.sentence. Reading out the error messages can go a long way in pointing you in the right direction when debugging.


 