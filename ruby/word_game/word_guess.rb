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
  attr_accessor :attempts
  
  def initialize 
    @guess_count = 0
    @is_over = false
    @attempts = 0
  end
  def check_letter(p1word, guess,p2array)
    @guess_count += 1
    # p2word << guess
    # p p2word
    if p1word == p2array
      @is_over = true
    else
      false
    end
    if p1word.include?( guess)
      p "#{p1word.index(guess)}"
    end
  end
end  

class Player_1  
  attr_reader :word
  attr_reader :new_word
  attr_accessor :check_letter

  def initialize(word)
    @word = word.split('')
    # puts "#{@word}"
  end
  # def split_word (letters)
  #   @word.split('')
  #   # puts "#{@word}"
  # end
end
class Player_2
  attr_accessor :array
  def initialize
    @array = []
  end
  def add_guesses(array,guess)
    @array << guess
    @array.uniq
  end
end
# user interface

puts "Welcome to the Word Guesser 2000!"
game = WordGuess.new

p game.guess_count
puts "Player 1: enter a word for Player 2 to guess"
word = gets.chomp
p1 =Player_1.new(word)
p1word = p1.word
p2 = Player_2.new

# p2array = []

while !game.is_over && game.guess_count < (word.length * 2)
  puts "Here is the word to guess"
  puts "_ " * (word.length)
  puts "Player 2: guess a letter"
  guess = gets.chomp
  p2array = p2.add_guesses(p2.array,guess)
  p p2array
  !game.check_letter(p1word,guess,p2array)
  # if game.check_letter(p1word, guess)
  #   puts "correct"
  #  else
  #    puts "try again"
  #  end
end
  
  if !game.is_over 
    puts "You had #{game.guess_count} guesses and you couldn't figure it out. maybe try a simpler word"
  else
    puts "You won in only #{game.guess_count} guesses! Well done"
  end
