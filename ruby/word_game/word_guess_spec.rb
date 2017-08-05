require_relative 'word_guess'

describe Player_1 do 		  
  
  it "downcases and splits a string to an array" do
  	joe = Player_1.new("test")
  	expect(joe.word).to eq ["t","e","s", "t"]
   end
end

describe WordGuess do
	let(:game) {WordGuess.new}

	it "initializes guess_count to 0" do
		expect(game.guess_count).to eq 0
	end
	it "creates an array of _ " do
		expect(game.find_correct_answer("test")).to eq ["_ ","_ ","_ ","_ "]
	end
end	
