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
# Andreas and Sean Class
class TennisPlayer
	def initialize
		puts "Welcome to the world of tennis!"
	end
	def fave_professional(fave_player)
		puts "My favorite player is #{fave_player}"
	end
	def hate_professional(least_fave_player)
		puts "My least favorite player is #{least_fave_player}"
	end
	players = []
		
	andreas = TennisPlayer.new
	andreas.fave_professional("Rafael Nadal")
	andreas.hate_professional("Tomas Berdych")
	tennis_loop = 50.times {players << TennisPlayer.new} 
	players.each { |i| 
		i.fave_professional("Rafael Nadal") 
		i.hate_professional("Tomas Berdych")
	}
	# 
end



