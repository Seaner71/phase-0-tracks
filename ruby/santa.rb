class Santa
	def speak
		puts "Ho, ho, ho! Haaaaaapy Holidays!"
	end
	def eat_milk_and_cookies(cookie_type)
			puts "That was a good #{cookie_type}!"
	end
	def initialize
		puts "initializing Santa instance...."
	end
end

kringle = Santa.new

kringle.speak
kringle.eat_milk_and_cookies("oreo")
