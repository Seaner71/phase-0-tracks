# Release 1 Design a word game

# user 1 enters a word  
# user 2 has X guesses to guess user 1's word based on the length of user 1s word. (i.e 2X word.length)
# user 2 guesses a letter
# if user 2 guesses the same letter 2x is does not count as a guess ** store in array need to change 
# if user guesses a correct letter in the word it is releaved in its proper postion. (_ _ _ _) and guess w = (w _ _ _)
# game ends if user guesses the word (positive message is displayed) or exceeds the guess limit (negative message is displayed)

class WordGuess
  attr_reader :guess_count
  attr_accessor :is_over
  attr_accessor :attempts
  attr_accessor :correct_answer
  
  def initialize 
    @guess_count = 0
    @is_over = false
    @attempts = 0
  end
    def check_letter(p1word, guess, p2array)
    @guess_count = p2array.count 
    # p1word.each do |letter|
    #   if letter == guess  
      if p1word.include?(guess)
        puts "#{guess} is correct"
        @correct_answer.delete_at(p1word.index(guess)) # words with same letter more than 1X not working
        @correct_answer.insert(p1word.index(guess), guess)
        # p @correct_answer
      else
        puts "#{guess} is incorrect"
        # # p @correct_answer
      end
    # end
      if p1word == @correct_answer
        p correct_answer.join('')
        @is_over = true
      else
        false
    end
  end
  def find_correct_answer(word)
    @correct_answer= Array.new(word.length, "_ ")
  end
end  

class Player_1  
  attr_reader :word
  attr_reader :new_word
  attr_accessor :check_letter

  def initialize(word)
    @word = word.downcase.split('')
  end
end
class Player_2
  attr_accessor :array
  def initialize
    @array = []
  end
  def add_guesses(array,guess)
     if @array.include?(guess)
      puts "You already guessed '#{guess}'"
        @array
      else
        @array << guess
      end
  end
end

# user interface

puts "Welcome to the Word Guesser 2000!"
game = WordGuess.new

puts "Player 1: enter a word for Player 2 to guess"
word = gets.chomp
p1 =Player_1.new(word)
p1word = p1.word

answer =game.find_correct_answer(p1word)
p2 = Player_2.new

while !game.is_over && game.guess_count < (word.length * 2)
  puts "Here is the word to guess"
  p answer.join('')
  puts "Player 2: guess a letter"
  guess = gets.chomp
  p2array = p2.add_guesses(p2.array,guess)
  
  !game.check_letter(p1word,guess,p2array)
  
end
  
  if !game.is_over 
    puts "You had #{game.guess_count} guesses and you couldn't figure it out. maybe try a simpler word"
  else
    puts "You won in only #{game.guess_count} guesses! Well done"
  end
