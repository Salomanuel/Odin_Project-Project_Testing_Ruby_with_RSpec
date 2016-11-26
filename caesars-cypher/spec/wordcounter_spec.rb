require "spec_helper"

describe "wordcounter" do
	it "works" do
		text   = "the rain in Spain falls mainly on the plain"
		result = {"the"=>2, "rain"=>1, "in"=>1, "Spain"=>1, "falls"=>1, "mainly"=>1, "on"=>1, "plain"=>1}
		expect(wordcounter(text)).to eql(result)
	end
end