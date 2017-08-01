# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # parse string, convert it to an array
  # Initialize a hash
  # Iterate through array
    # - for each time, assign item as key and default value (1)
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(item_string)
  items = item_string.split
  grocery_list = {}
  items.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
    # - add item to list and quantity
    # - set optional quantity to 1 in parameter list
# output: hash (list modified)

def add_item(list, item_name, quantity = 1)
  list[item_name] = quantity
end

# Method to remove an item from the list
# input: list, item name
# steps:
  # look up item in list
  # delete item
# output: hash (list modified)

def remove_item(list, item_name)
  # list.delete_if { |item, amount| item == item_name }
  list.delete(item_name)
end

# Method to update the quantity of an item
# input: list, item name, and quantity
# steps:
  # look up item in list
  # assign new quantity value to item
# output: hash

def update_quantity(list, item_name, quantity)
  list[item_name] = quantity
end


# Method to print a list and make it look pretty
# input: list
# steps:
  # Iterate through hash
    # print both item and quantity on newlines
# output: output to user is item and quantity but return value is nil

def print_list(list)
  puts "Here is your current list: "
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

#Test methods driver code
list = create_list("bread apples bananas beer")
add_item(list, "Lemonade", 2)
add_item(list, "Tomatoes", 3)
add_item(list, "Onions", 1)
add_item(list, "Ice Cream", 2)

remove_item(list, "Lemonade")
remove_item(list, "eggs")
update_quantity(list, "Ice Cream", 1)
print_list(list)


#REFLECT
# - I learned that while I have to fight the urge to jump into a solution right away. Psuedocoding coding offers the opportunity to think about your program as whole and helps you start on the right path from the beginning. The times I have ignored or blown through psuedo coding I have gotten into trouble
# The trade offs of uding an array or hash are that I find arrays somewhat easier to deal with (i.e shovel operators). The hash made more sense logically as the structure. While a multi demensional array would have worked it think it would have been less efficient.
# A method returns an object. A method is passed innpt and it does someting with it a returns it as out.It always returns something which does not explicity have to be stated. If you do not "force a return" (explicit)Ruby will return the last evaluated statement.
# You can pass any object into a method. Strings, Fixnum, Arrays, hashes etc
# You can pass information from one method to another by having the parameters of method B be the return value of method A.
# the concept of psuedocoding was strengthened. method parameters and scope. While I still get tripped up on scope I am no longer tripped up for hours as I was in the past. I am realizing quicker that a method won't have acces to a variable unless it is passed in or vice versa. I struggle with predicting what my code will do before I run it. ) I feel like I am wrong about my prediction as often as I am right. I am also struggling with getting started on a program and visualizing how it will flow. I get a new question to answer and "impostor syndrome" sets in. I really really enjoy working with other students in this situation since it helps me calm down and rationally attack the problem. I feel like I m getting closer but still needs "hints" and direction to work my way out of the woods. The solo challenges and the assessments have been the most difficult.
