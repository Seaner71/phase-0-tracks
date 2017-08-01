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
