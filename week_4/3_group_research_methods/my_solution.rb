# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution

def my_array_finding_method(source, thing_to_find)
  source.select {|i| i.to_s.include? thing_to_find}
end

def my_hash_finding_method(source, thing_to_find)
  match = []
  source.select {|k, v| match.push(k) if v == thing_to_find}
  match
end

# Identify and describe the ruby method you implemented.

# I chose to utilize the select method. There were other options but select could be used on both the array and 
# the hash. In the first method, select is passed a block that iterates through the array looking for elements that
# include the thing to find. If include is true, those elements are returned in a new array. This leaves the original
# array unaltered. In the second method, I create an empty array. Then, select is passed a block that iterates through 
# the hash. If value is equal to the thing to find, then is corresponding key is pushed into the new empty array.
# Finally, the new array is returned. The reason for creating the new array is two fold. First, the select method by
# default returns a new hash but we wanted an array. Second, it leaves the original hash unaltered.

# Person 2

def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3

def my_array_sorting_method(source)
  num = source.grep(Fixnum)
  str = source.grep(String)
  return num.sort + str.sort
end

def my_hash_sorting_method(source)
  source.sort_by {|key,value| value}
end

# Identify and describe the ruby method you implemented. 

# For the array sorting method, I first created an array called num that returns an array of every element in the source 
# that is equal to Fix number. Next, I created another array called str that returns an array of every element in the 
# source that is equal to string. I used the sort method to sort the num and str array. After that, I concatenate both of 
# them into one array

# For the hash sorting method, I used the sort_by method to sort the hash by its value from smallest to largest


# Person 4

def my_array_deletion_method(source, thing_to_delete)
  source.delete_if {|element| element.to_s.include? (thing_to_delete)} 
end


def my_hash_deletion_method(source, thing_to_delete)
    source.delete_if {|key,value| key==thing_to_delete }
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!

# Working on section one was fun. I figured a few different ways of solving the challenge but wanted to be able 
# to use the same method for both the array and the hash. William's solution for section 3 looks fairly easy to
# read and understand. We didn't have a fourth member to our group so I came up with its solution. Once we get
# Jared's solution to section 2, we'll run the test code to see if they all work together.

# I'm confident in this challenges Learning Competencies. I enjoyed looking through the Ruby Docs a bit more and
# challenging myself to look beyond the few methods I'm most comfortable using. 

