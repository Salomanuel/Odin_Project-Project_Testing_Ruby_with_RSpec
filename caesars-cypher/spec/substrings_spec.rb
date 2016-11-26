require "spec_helper"

describe "substrings" do
	before :each do
		@dictionary = ["below","down","go","going","horn","how","howdy",
								"it","i","low","own","part","partner","sit"]
	end
	context "with one work" do
		it "works with a dictionary and one single work" do
			expect(substrings("below", @dictionary)).to eql({"below"=>1, "low"=>1})
		end
	end
	context "with many words" do
		it "works with 'Howdy partner, sit down! How's it going?'" do
			words  = "Howdy partner, sit down! How's it going?"
			result = {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
			expect(substrings(words, @dictionary)).to eql(result)
		end
	end
end