class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(141)
	end
	def speak
		puts "Ho, ho, ho! Haaaaaapy Holidays!"
	end
	def eat_milk_and_cookies(cookie_type)
			puts "That was a good #{cookie_type}!"
	end
end

kringle = Santa.new("male", "black")
kringle.speak
kringle.eat_milk_and_cookies("oreo")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Asian", "prefer not to say"]

10.times do |i|
	santas << Santa.new(example_genders[rand],example_ethnicities[rand])
	puts "There are now #{santas.length} Santas "
end
p santas
# p "There are #{santas.count("male")} male Santas and #{santas.count("female")} female Santas"