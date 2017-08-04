require_relative 'word_guess'
describe Player_1 do 		  
  let(:word) { Player_1.new("Test") }

  it "downcases and splits a string to an array" do
    expect (Player_1.new("Test")).to eq ["t","e","s","t"]
   end
end

