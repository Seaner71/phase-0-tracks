class Santa
		attr_reader :ethnicity #getter for ethnicity
		attr_accessor :age, :gender, :reindeer_ranking #setters age and gender
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
		def get_mad_at(bad_reindeer) # possible built in methods to do this (rotate, shift, )
			# @reindeer_ranking= @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(bad_reindeer)))
			# alternate solution 
			@reindeer_ranking << @reindeer_ranking.delete(bad_reindeer)
		end
	end
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Asian", "prefer not to say"]

	kringle = Santa.new(example_genders.sample, example_ethnicities.sample) # test methods and getter/setter functionality 
	kringle.speak
	kringle.eat_milk_and_cookies("oreo")
	p kringle.age
	p kringle.reindeer_ranking
	p kringle.get_mad_at("Comet") 
	 # test accessing least favorite reindeer
	# p kringle.reindeer_ranking = kringle.reindeer_ranking.rotate(rand(8))
	p kringle.reindeer_ranking[-1]
	p kringle.age = 23
	p kringle.ethnicity
	p kringle.gender 

# 	santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Asian", "prefer not to say"]

# 	200.times do |i|
# 		santas << Santa.new(example_genders.sample,example_ethnicities.sample)
# 		puts "Santa #{santas[i]} is #{santas[i].age} years old #{santas[i].gender} and #{santas[i].ethnicity}."
# 		santas[i].reindeer_ranking = santas[i].reindeer_ranking.rotate(rand(8))
# 		# puts "#{santas[i].reindeer_ranking}" test random reinder_ranking ordering
# 		puts "#{santas[i]} least favorite reindeer is #{santas[i].reindeer_ranking[-1]}."
# 		puts "There are now #{santas.length} Santas "
# 		end
	
	