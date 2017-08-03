# Release 1 Design a word game

# user 1 enters a word 
# user 2 has X guesses to guess user 1's word based on the length of user 1s word. (i.e 2X word.length)
# user 2 guesses a letter
# if user 2 guesses the same letter 2x is does not count as a guess
# if user guesses a correct letter in the word it is releaved in its proper postion. (_ _ _ _) and guess w = (w _ _ _)
# game ends if user guesses the word (positive message is displayed) or exceeds the guess limit (negative message is displayed)

class WordGuess
  attr_reader :guess_count
  attr_accessor :is_over
	
  def initialize
    @word = word
    @guess_count = 0
    @is_over = false
  end
  
  def word_search
  	@word.split('')
  end
  
  def check_word(index) # copied from example needs to be rethought
  	@guess_count += 1
  	if @check_word[index] == word 
  		@is_over = true
  	else
  		false
  	end
  end
end

# user interface

puts "Welcome to the Word Guesser 2000!"
game = WordGuess.new

puts "Player 1: enter a word for Player 2 to guess"
game.word_search

while !game.is_over && game.guess_count < (word.length * 2)
  puts "User 2 guess a letter"
  guess = gets.chomp
   if !game.check_cup(guess - 1)
    puts "Nope! Try again."
   end
end
  if !game.is_over 
    puts "You had #{game.guess_count} guesses and you couldn't figure it out. maybe try a simpler word"
  else
    puts "You won in only #{game.guess_count} guesses! Well done"
end
