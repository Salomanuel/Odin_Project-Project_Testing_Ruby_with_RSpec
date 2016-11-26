require "spec_helper"

describe CaesarCypher do
	before(:each) do
		@instance = CaesarCypher.new
	end

	describe "#caesar" do
		it "has an empty string" do
			expect(@instance.caesar("")).to eql("")
		end

		it "has a single letter, shifts 1" do
			expect(@instance.caesar("a",1)).to eql("b")
		end

		it "has a single word" do
			expect(@instance.caesar("ciaoz",5)).to eql("hnfte")
		end

		it "manages the last letters on the alphabet" do
			expect(@instance.caesar("xyz")).to eql("cde")
		end

		it "respects case height" do
			expect(@instance.caesar("What")).to eql("Bmfy")
		end


		it "respects case height in the middle too" do
			expect(@instance.caesar("AaAA")).to eql("FfFF")
		end

		it "manages two words" do
			expect(@instance.caesar("bella ciao")).to eql("gjqqf hnft")
		end

		it "manages a string with punctuation" do
			expect(@instance.caesar("What a string!", 5)).to eql("Bmfy f xywnsl!")
		end

	end
end

describe CaesarCypherNew do
	before(:each) do
		@instance = CaesarCypherNew.new
	end

	describe "#caesar" do
		it "has an empty string" do
			expect(@instance.caesar("")).to eql("")
		end

		it "has a single letter, shifts 1" do
			expect(@instance.caesar("a",1)).to eql("b")
		end

		it "has a single word" do
			expect(@instance.caesar("ciaoz",5)).to eql("hnfte")
		end

		it "manages the last letters on the alphabet" do
			expect(@instance.caesar("xyz")).to eql("cde")
		end

		it "respects case height" do
			expect(@instance.caesar("What")).to eql("Bmfy")
		end

		it "respects case height in the middle too" do
			expect(@instance.caesar("AaAA")).to eql("FfFF")
		end

		it "manages two words" do
			expect(@instance.caesar("bella ciao")).to eql("gjqqf hnft")
		end

		it "manages a string with punctuation" do
			expect(@instance.caesar("What a string!", 5)).to eql("Bmfy f xywnsl!")
		end

	end
end