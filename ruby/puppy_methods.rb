class Puppy
	def initialize
		puts "Initializing new puppy instance ..."
	end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(num)
  	puts "Woof '\n' "  * num
  end
  def roll_over
  	puts "Rolls Over"
  end
  def dog_years(integer)
  	dog_age = integer * 7
  	puts "This dog is #{dog_age} in dog years, #{dog_age} is #{integer} in human years"
  end
  def bark_on_command(boolean)
  	if boolean == true
  		puts "Bark!"
  	else
  		puts "The dog is not barking"
  	end
  end		
chance= Puppy.new
chance.fetch("bone")
chance.speak(5)
chance.roll_over
chance.dog_years(7)
chance.bark_on_command(false)
end


