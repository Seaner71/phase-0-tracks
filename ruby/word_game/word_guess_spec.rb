require_relative 'word_guess'
describe WordGuess do 		  
  let(:word) { WordGuess.new("test") }

  it "stores the word given on initialization " do
    expect(word.new_word).to eq "test"
   end
end