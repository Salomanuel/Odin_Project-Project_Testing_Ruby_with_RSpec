require "rspec"
require "tictac"

describe "tictac" do
	before(:each) do 
		@tictac = Tictac.new
	end

	describe "win" do
		it "wins with an horizontal line" do
			@tictac.move(0,0)
			@tictac.move(1,0)
			@tictac.move(2,0)
			@tictac.score_check
			expect(@tictac).to eql(2) #receive(:win?)
		end
	end
end