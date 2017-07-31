	class Santa
		def initialize(gender, ethnicity)
			@gender = gender
			@ethnicity = ethnicity
			@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
			@age = 0
		end
		def speak
			puts "Ho, ho, ho! Haaaaaapy Holidays!"
		end
		def eat_milk_and_cookies(cookie_type)
				puts "That was a good #{cookie_type}!"
		end
		def age
			@age
		end
		def ethnicity
			@ethnicity
		end
		def celebrate_birthday
			@age= @age + 1
		end
		def get_mad_at(bad_reindeer) # possible built in methods to do this (rotate, shift, )
			@reindeer_ranking= @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(bad_reindeer)))
		end
		def change_gender(new_gender)
			@gender= new_gender
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
	# p "There are #{santas.count("male")} male Santas and #{santas.count("female")} female Santas"
	p santas
	p kringle.celebrate_birthday
	p kringle.get_mad_at("Rudolph")
	p kringle.change_gender("bigender")
	p kringle
