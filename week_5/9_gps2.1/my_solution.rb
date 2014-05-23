# U2.W5: Bakery Challenge GPS

# I worked on this challenge with Darrell Jones

# Our Refactored Solution

def bakery_num(people, food) 
  menu = {"pie" => 8, "cake" => 6, "cookie" => 1}
  qty = {"pie" => 0, "cake" => 0, "cookie" => 0}
  
  raise ArgumentError.new("You can't make that food") if menu.has_key?(food) == false

  if people % menu[food] == 0 
    food_qty = people / menu[food]
    "You need to make #{food_qty} #{food}(s)."
  else
    while people > 0                 
      if people / menu["pie"] > 0 
        qty["pie"] = people / menu["pie"]
        people = people % menu["pie"]
      elsif people / menu["cake"] > 0
        qty["cake"] = people / menu["cake"]
        people = people % menu["cake"]
      else
        qty["cookie"] = people
        people = 0
      end
    end
    "You need to make #{qty["pie"]} pie(s), #{qty["cake"]} cake(s), and #{qty["cookie"]} cookie(s)."
  end	
end


#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
#p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." 

#  Reflection 

# I enjoyed this challenge. At first my GPS partner and I were a little confused by the bulky original code but once
# we figured out what was going on, we off and running. A big take away from the challenge was to fully read and
# understand the original or legacy code prior to trying to jump in and comment, refactor or change it. 

# To start, I was a little confused by the original while loop. Talking it through helped. I realized it was doing 
# what it was intended to do, not necessarily what I thought it should do. I made the assumption that if the favorite 
# food was among those the baker made, that if the group was not divisible by the number of people that food fed, 
# that the while loop would output the favorite food first followed by whatever else would be needed to feed the 
# group. In reality, it always outputs pies first since that feeds the most people.

# I'm confident in this challenges Learning Competencies. I got a good amount of learning out of the challenge. Both
# because of the challenge, but also thanks to my GPS partner. Great experience all the way around.  
