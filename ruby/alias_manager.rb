#Week 5 Solo Challenge Manipulate Strings with Iteration
def reverse_name(string) # Reverse the first and last naem
	reverse_name =string.split(' ').reverse.join(' ')
end	

def next_vowel(string) # rotate through vowel and consanant an moving the index 1 position to the right
 	vowels = ["a", "e", "i", "o", "u"]
 	consanants =['b', 'c', 'd', 'f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
 	new_name = string.downcase.split('').map do |letter| # handle capital letters by downcase
 	  if vowels.include?(letter)
 	  	vowels.rotate(1)[vowels.index(letter)]
 	  elsif  consanants.include?(letter)
 	    consanants.rotate(1)[consanants.index(letter)]
 	  else
 	  	letter
 	  end
 	 end
 	new_name.join 
end

def capitalize(string) #re-capitalize the first letter ofd each word.
  string.split.map{ |letter| letter.capitalize}.join(" ")
end
alias_hash ={} # initialize empty hash OUTSIDE the loops and method THINK ABUT SCOPE

loop do # loop to add key/value pairs to the empty hash above
	puts "Please enter a name to generate an alias or type 'quit' to exit"
	name = gets.chomp
	break if name == "quit"
	dbc_alias =capitalize(next_vowel(reverse_name(name)))
	alias_hash[name.to_sym] = dbc_alias
end
alias_hash.each {|realname, fakename| #iterate through hash and puts message to user
	puts "#{realname} is also known as #{fakename} in some circles" }

