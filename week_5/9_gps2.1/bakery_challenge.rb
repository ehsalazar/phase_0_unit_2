# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Darrell Jones
# 2) Ernie Salazar

# 1. Input: The number of people to feed and thier favorite food
# 2. Output: The quantity of food items to make. 

# This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food) # define method with 2 parameters
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # hash with keys of items 
                                                     # and value of number of people it feeds.
  pie_qty = 0 
  cake_qty = 0
  cookie_qty = 0 # the food items available set to zero
  
  has_fave = false # Does the bakery make this item?

  my_list.each_key do |k| # determines if bakery makes said item. If so, has_fave == true
    if k == fav_food
      has_fave = true
      fav_food = k
    end
  end
  
  if has_fave == false # if we don't make that food, raise error
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list.values_at(fav_food)[0] # determines the amount of people are feed
                                                  # by fav_food
      if num_of_people % fav_food_qty == 0 # If the number of people is equally divisible by
                                            # the food item, then divide the number of people
                                            # by the food qty to output the number of food 
                                            # items to make.
        num_of_food = num_of_people / fav_food_qty
        return "You need to make #{num_of_food} #{fav_food}(s)."
      else num_of_people % fav_food_qty != 0 # If the number of people is not equally divisible
                                            # although else doesnt need statement
                                            
        while num_of_people > 0                 # while loop to determine the foods to make
          if num_of_people / my_list["pie"] > 0 # to feed the largest quantity of people
                                                # and make cookies for the balance.
            pie_qty = num_of_people / my_list["pie"]
            num_of_people = num_of_people % my_list["pie"]
          elsif num_of_people / my_list["cake"] > 0
            cake_qty = num_of_people / my_list["cake"]
            num_of_people = num_of_people % my_list["cake"]
          else
            cookie_qty = num_of_people
            num_of_people = 0
          end
        end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end  # the output is a string with the quantities of each item to make filled in. 
  end
end

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 