# Release 1 Design a word game

# user 1 enters a word  
# user 2 has X guesses to guess user 1's word based on the length of user 1s word. (2X word.length)
# user 2 guesses a letter
# if user 2 guesses the same letter 2x is does not count as a guess ** store in array need to change 
# if user guesses a correct letter in the word it is releaved in its proper postion. west and guess w = (w _ _ _)
# game ends if user guesses the word (positive message is displayed) or exceeds the guess limit (negative message is displayed)

class WordGuess
  attr_reader :guess_count
  attr_accessor :is_over
  attr_accessor :correct_answer
  
  def initialize 
    @guess_count = 0
    @is_over = false
  end
    def check_letter(player_1_word, guess, player_2_guesses)
    @guess_count = player_2_guesses.count 
    # player_1_word.each do |letter|
    #   if letter == guess   
      if player_1_word.include?(guess) # words with same letter more than 1X not working left each  in comments 
        puts "#{guess} is correct"
        @correct_answer.delete_at(player_1_word.index(guess)) 
        @correct_answer.insert(player_1_word.index(guess), guess)
      else
        puts "#{guess} is incorrect"
       
      end
      if player_1_word == @correct_answer
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
player_1_word = p1.word

answer =game.find_correct_answer(player_1_word)
p2 = Player_2.new

while !game.is_over && game.guess_count < (word.length * 2)
  puts "Here is the word to guess"
  p answer.join('')
  puts "Player 2: guess a letter"
  guess = gets.chomp
  player_2_guesses = p2.add_guesses(p2.array,guess)
  
  !game.check_letter(player_1_word,guess,player_2_guesses)
  
end
  
  if !game.is_over 
    puts "You had #{game.guess_count} guesses and you couldn't figure it out. maybe try a simpler word"
  else
    puts "You won in only #{game.guess_count} guesses! Well done"
  end
