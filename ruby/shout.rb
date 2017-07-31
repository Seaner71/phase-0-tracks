module Shout
	# def self.yell_angrily(words)
	# 	words + "!!!" + " :("
	# end
	# def self.yell_happily(words)
	# 	words + " booyah" + " !!!" + " :) :)"
	# end
	def yell_happily(words)
		words + " booyah" + " !!!" + " :) :)"
	end
	def yell_angrily(words)
		words + "!!!" + " :("
	end
end

class Teacher
	include Shout 
end

class TalkRadioHost
	include Shout
end

puts "Enter a phrase"
phrase = gets.chomp
# puts Shout.yell_happily(phrase)
# puts Shout.yell_angrily(phrase)

teacher = Teacher.new
p teacher.yell_angrily(phrase)
p teacher.yell_happily("What are you doing?")

talkradiohost = TalkRadioHost.new
p talkradiohost.yell_happily("Trump")
p talkradiohost.yell_angrily("Trump")

