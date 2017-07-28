# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
"shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----
p "q1 Array"
zombie_apocalypse_supplies.each {|item| puts "#{item}*"}

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----
def find_item(arr,string)
	arr.each  do |item|
		if item == string
			return true
		end 
	end
end
p "q2 Array"
p find_item(zombie_apocalypse_supplies,"boots")
# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----
# zombie_apocalypse_supplies.each do |item|
# 	zombie_apocalypse_supplies.pop((zombie_apocalypse_supplies.length-5))
# end
# p zombie_apocalypse_supplies
	
five_items =[]
   zombie_apocalypse_supplies[0..4].each do |item|
  	 five_items <<  item
    end
# end
p "q3 Array"
p five_items
  

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
combined_supplies = (zombie_apocalypse_supplies + other_survivor_supplies).sort.uniq
p "q4 Array"
puts combined_supplies
#test
# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
p "q1 Hash"
extinct_animals.each {|bird, year| print "#{bird}-#{year}*"}
# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----
new_hash = {}
extinct_animals.each do |animal, year|
  if year < 2000
    new_hash[animal] = year
  end
  end
 p "q2 Hash"
p new_hash
# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----
year_extinct = {}
extinct_animals.each do |animal, year|
     year_extinct[animal] = year -3
  end
p "q3 Hash"
p extinct_animals.values 
p year_extinct.values 
p year_extinct


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----
def is_extinct?(hash,arr)
	hash.each  do |animal,year|
		if animal == arr
			return true
		end 
		end
end
p "q4 Hash"
#find_item(extinct_animals,"Andean Cat")
is_extinct?(extinct_animals,"Dodo")
# => find_item(extinct_animals,"Saiga Antelope")
# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----
p "q5 Hash"

p extinct_animals.assoc("Passenger Pigeon")
extinct_animals.delete_if {|animal,year| animal =="Passenger Pigeon"}

p extinct_animals


